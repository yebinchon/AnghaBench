
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int FFFILE ;


 int DBL_MANT_DIG ;
 int DBL_MAX ;
 int DBL_MIN ;
 int EINVAL ;
 int ERANGE ;
 int INT_MAX ;
 int KMAX ;
 int LD_B1B_DIG ;

 long long LLONG_MIN ;
 int MASK ;
 double copysign (double,double) ;
 int errno ;
 scalar_t__ fabs (double) ;
 double fmod (double,int) ;
 scalar_t__ pow (int,int) ;
 double scalbn (double,int) ;
 long long scanexp (int *,int) ;
 int shgetc (int *) ;
 int shlim (int *,int ) ;
 int shunget (int *) ;

__attribute__((used)) static double decfloat(FFFILE *f, int c, int bits, int emin, int sign, int pok)
{
    uint32_t x[KMAX];
    static const uint32_t th[] = { 128 };
    int i, j, k, a, z;
    long long lrp=0, dc=0;
    long long e10=0;
    int lnz = 0;
    int gotdig = 0, gotrad = 0;
    int rp;
    int e2;
    int emax = -emin-bits+3;
    int denormal = 0;
    double y;
    double frac=0;
    double bias=0;
    static const int p10s[] = { 10, 100, 1000, 10000,
        100000, 1000000, 10000000, 100000000 };

    j=0;
    k=0;


    for (; c=='0'; c = shgetc(f)) gotdig=1;
    if (c=='.') {
        gotrad = 1;
        for (c = shgetc(f); c=='0'; c = shgetc(f)) gotdig=1, lrp--;
    }

    x[0] = 0;
    for (; c-'0'<10U || c=='.'; c = shgetc(f)) {
        if (c == '.') {
            if (gotrad) break;
            gotrad = 1;
            lrp = dc;
        } else if (k < KMAX-3) {
            dc++;
            if (c!='0') lnz = dc;
            if (j) x[k] = x[k]*10 + c-'0';
            else x[k] = c-'0';
            if (++j==9) {
                k++;
                j=0;
            }
            gotdig=1;
        } else {
            dc++;
            if (c!='0') {
                lnz = (KMAX-4)*9;
                x[KMAX-4] |= 1;
            }
        }
    }
    if (!gotrad) lrp=dc;

    if (gotdig && (c|32)=='e') {
        e10 = scanexp(f, pok);
        if (e10 == LLONG_MIN) {
            if (pok) {
                shunget(f);
            } else {
                shlim(f, 0);
                return 0;
            }
            e10 = 0;
        }
        lrp += e10;
    } else if (c>=0) {
        shunget(f);
    }
    if (!gotdig) {
        errno = EINVAL;
        shlim(f, 0);
        return 0;
    }


    if (!x[0]) return sign * 0.0;


    if (lrp==dc && dc<10 && (bits>30 || x[0]>>bits==0))
        return sign * (double)x[0];
    if (lrp > -emin/2) {
        errno = ERANGE;
        return sign * DBL_MAX * DBL_MAX;
    }
    if (lrp < emin-2*DBL_MANT_DIG) {
        errno = ERANGE;
        return sign * DBL_MIN * DBL_MIN;
    }


    if (j) {
        for (; j<9; j++) x[k]*=10;
        k++;
        j=0;
    }

    a = 0;
    z = k;
    e2 = 0;
    rp = lrp;


    if (lnz<9 && lnz<=rp && rp < 18) {
        int bitlim;
        if (rp == 9) return sign * (double)x[0];
        if (rp < 9) return sign * (double)x[0] / p10s[8-rp];
        bitlim = bits-3*(int)(rp-9);
        if (bitlim>30 || x[0]>>bitlim==0)
            return sign * (double)x[0] * p10s[rp-10];
    }


    for (; !x[z-1]; z--);


    if (rp % 9) {
        int rpm9 = rp>=0 ? rp%9 : rp%9+9;
        int p10 = p10s[8-rpm9];
        uint32_t carry = 0;
        for (k=a; k!=z; k++) {
            uint32_t tmp = x[k] % p10;
            x[k] = x[k]/p10 + carry;
            carry = 1000000000/p10 * tmp;
            if (k==a && !x[k]) {
                a = (a+1 & MASK);
                rp -= 9;
            }
        }
        if (carry) x[z++] = carry;
        rp += 9-rpm9;
    }


    while (rp < 9*LD_B1B_DIG || (rp == 9*LD_B1B_DIG && x[a]<th[0])) {
        uint32_t carry = 0;
        e2 -= 29;
        for (k=(z-1 & MASK); ; k=(k-1 & MASK)) {
            uint64_t tmp = ((uint64_t)x[k] << 29) + carry;
            if (tmp > 1000000000) {
                carry = tmp / 1000000000;
                x[k] = tmp % 1000000000;
            } else {
                carry = 0;
                x[k] = tmp;
            }
            if (k==(z-1 & MASK) && k!=a && !x[k]) z = k;
            if (k==a) break;
        }
        if (carry) {
            rp += 9;
            a = (a-1 & MASK);
            if (a == z) {
                z = (z-1 & MASK);
                x[z-1 & MASK] |= x[z];
            }
            x[a] = carry;
        }
    }


    for (;;) {
        uint32_t carry = 0;
        int sh = 1;
        for (i=0; i<LD_B1B_DIG; i++) {
            k = (a+i & MASK);
            if (k == z || x[k] < th[i]) {
                i=LD_B1B_DIG;
                break;
            }
            if (x[a+i & MASK] > th[i]) break;
        }
        if (i==LD_B1B_DIG && rp==9*LD_B1B_DIG) break;

        if (rp > 9+9*LD_B1B_DIG) sh = 9;
        e2 += sh;
        for (k=a; k!=z; k=(k+1 & MASK)) {
            uint32_t tmp = x[k] & (1<<sh)-1;
            x[k] = (x[k]>>sh) + carry;
            carry = (1000000000>>sh) * tmp;
            if (k==a && !x[k]) {
                a = (a+1 & MASK);
                i--;
                rp -= 9;
            }
        }
        if (carry) {
            if ((z+1 & MASK) != a) {
                x[z] = carry;
                z = (z+1 & MASK);
            } else x[z-1 & MASK] |= 1;
        }
    }


    for (y=i=0; i<LD_B1B_DIG; i++) {
        if ((a+i & MASK)==z) x[(z=(z+1 & MASK))-1] = 0;
        y = 1000000000.0L * y + x[a+i & MASK];
    }

    y *= sign;


    if (bits > DBL_MANT_DIG+e2-emin) {
        bits = DBL_MANT_DIG+e2-emin;
        if (bits<0) bits=0;
        denormal = 1;
    }


    if (bits < DBL_MANT_DIG) {
        bias = copysign(scalbn(1, 2*DBL_MANT_DIG-bits-1), y);
        frac = fmod(y, scalbn(1, DBL_MANT_DIG-bits));
        y -= frac;
        y += bias;
    }


    if ((a+i & MASK) != z) {
        uint32_t t = x[a+i & MASK];
        if (t < 500000000 && (t || (a+i+1 & MASK) != z))
            frac += 0.25*sign;
        else if (t > 500000000)
            frac += 0.75*sign;
        else if (t == 500000000) {
            if ((a+i+1 & MASK) == z)
                frac += 0.5*sign;
            else
                frac += 0.75*sign;
        }
        if (DBL_MANT_DIG-bits >= 2 && !fmod(frac, 1))
            frac++;
    }

    y += frac;
    y -= bias;

    if ((e2+DBL_MANT_DIG & INT_MAX) > emax-5) {
        if (fabs(y) >= pow(2, DBL_MANT_DIG)) {
            if (denormal && bits==DBL_MANT_DIG+e2-emin)
                denormal = 0;
            y *= 0.5;
            e2++;
        }
        if (e2+DBL_MANT_DIG>emax || (denormal && frac))
            errno = ERANGE;
    }

    return scalbn(y, e2);
}

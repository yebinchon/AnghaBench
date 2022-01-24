#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FFFILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ERANGE ; 
 int UINT_MAX ; 
 int ULLONG_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* table ; 

__attribute__((used)) static unsigned long long FUNC4(FFFILE *f, unsigned base, int pok, unsigned long long lim)
{
    const unsigned char *val = table+1;
    int c, neg=0;
    unsigned x;
    unsigned long long y;
    if (base > 36 || base == 1) {
        errno = EINVAL;
        return 0;
    }
    while (FUNC0((c=FUNC1(f))));
    if (c=='+' || c=='-') {
        neg = -(c=='-');
        c = FUNC1(f);
    }
    if ((base == 0 || base == 16) && c=='0') {
        c = FUNC1(f);
        if ((c|32)=='x') {
            c = FUNC1(f);
            if (val[c]>=16) {
                FUNC3(f);
                if (pok) FUNC3(f);
                else FUNC2(f, 0);
                return 0;
            }
            base = 16;
        } else if (base == 0) {
            base = 8;
        }
    } else {
        if (base == 0) base = 10;
        if (val[c] >= base) {
            FUNC3(f);
            FUNC2(f, 0);
            errno = EINVAL;
            return 0;
        }
    }
    if (base == 10) {
        for (x=0; c-'0'<10U && x<=UINT_MAX/10-1; c=FUNC1(f))
            x = x*10 + (c-'0');
        for (y=x; c-'0'<10U && y<=ULLONG_MAX/10 && 10*y<=ULLONG_MAX-(c-'0'); c=FUNC1(f))
            y = y*10 + (c-'0');
        if (c-'0'>=10U) goto done;
    } else if (!(base & base-1)) {
        int bs = "\0\1\2\4\7\3\6\5"[(0x17*base)>>5&7];
        for (x=0; val[c]<base && x<=UINT_MAX/32; c=FUNC1(f))
            x = x<<bs | val[c];
        for (y=x; val[c]<base && y<=ULLONG_MAX>>bs; c=FUNC1(f))
            y = y<<bs | val[c];
    } else {
        for (x=0; val[c]<base && x<=UINT_MAX/36-1; c=FUNC1(f))
            x = x*base + val[c];
        for (y=x; val[c]<base && y<=ULLONG_MAX/base && base*y<=ULLONG_MAX-val[c]; c=FUNC1(f))
            y = y*base + val[c];
    }
    if (val[c]<base) {
        for (; val[c]<base; c=FUNC1(f));
        errno = ERANGE;
        y = lim;
        if (lim&1) neg = 0;
    }
done:
    FUNC3(f);
    if (y>=lim) {
        if (!(lim&1) && !neg) {
            errno = ERANGE;
            return lim-1;
        } else if (y>lim) {
            errno = ERANGE;
            return lim;
        }
    }
    return (y^neg)-neg;
}
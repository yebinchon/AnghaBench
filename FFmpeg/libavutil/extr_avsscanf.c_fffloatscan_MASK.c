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
 int DBL_MANT_DIG ; 
 int /*<<< orphan*/  DBL_MIN_EXP ; 
 int /*<<< orphan*/  EINVAL ; 
 int FLT_MANT_DIG ; 
 int /*<<< orphan*/  FLT_MIN_EXP ; 
 int INFINITY ; 
 double NAN ; 
 scalar_t__ FUNC0 (int) ; 
 double FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 double FUNC2 (int /*<<< orphan*/ *,int,int,int,int) ; 
 char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double FUNC6(FFFILE *f, int prec, int pok)
{
    int sign = 1;
    size_t i;
    int bits;
    int emin;
    int c;

    switch (prec) {
    case 0:
        bits = FLT_MANT_DIG;
        emin = FLT_MIN_EXP-bits;
        break;
    case 1:
        bits = DBL_MANT_DIG;
        emin = DBL_MIN_EXP-bits;
        break;
    case 2:
        bits = DBL_MANT_DIG;
        emin = DBL_MIN_EXP-bits;
        break;
    default:
        return 0;
    }

    while (FUNC0((c = FUNC3(f))));

    if (c=='+' || c=='-') {
        sign -= 2*(c=='-');
        c = FUNC3(f);
    }

    for (i=0; i<8 && (c|32)=="infinity"[i]; i++)
        if (i<7) c = FUNC3(f);
    if (i==3 || i==8 || (i>3 && pok)) {
        if (i!=8) {
            FUNC5(f);
            if (pok) for (; i>3; i--) FUNC5(f);
        }
        return sign * INFINITY;
    }
    if (!i) for (i=0; i<3 && (c|32)=="nan"[i]; i++)
        if (i<2) c = FUNC3(f);
    if (i==3) {
        if (FUNC3(f) != '(') {
            FUNC5(f);
            return NAN;
        }
        for (i=1; ; i++) {
            c = FUNC3(f);
            if (c-'0'<10U || c-'A'<26U || c-'a'<26U || c=='_')
                continue;
            if (c==')') return NAN;
            FUNC5(f);
            if (!pok) {
                errno = EINVAL;
                FUNC4(f, 0);
                return 0;
            }
            while (i--) FUNC5(f);
            return NAN;
        }
        return NAN;
    }

    if (i) {
        FUNC5(f);
        errno = EINVAL;
        FUNC4(f, 0);
        return 0;
    }

    if (c=='0') {
        c = FUNC3(f);
        if ((c|32) == 'x')
            return FUNC2(f, bits, emin, sign, pok);
        FUNC5(f);
        c = '0';
    }

    return FUNC1(f, c, bits, emin, sign, pok);
}
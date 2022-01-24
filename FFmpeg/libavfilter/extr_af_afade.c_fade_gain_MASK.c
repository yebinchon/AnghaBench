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
typedef  double int64_t ;

/* Variables and functions */
#define  CBR 144 
#define  CUB 143 
 int FUNC0 (int) ; 
#define  DESE 142 
#define  DESI 141 
#define  ESIN 140 
#define  EXP 139 
#define  HSIN 138 
#define  IHSIN 137 
#define  IPAR 136 
#define  IQSIN 135 
#define  LOG 134 
#define  LOSI 133 
 double M_PI ; 
#define  NONE 132 
#define  PAR 131 
#define  QSIN 130 
#define  QUA 129 
#define  SQU 128 
 double FUNC1 (int) ; 
 double FUNC2 (double) ; 
 double FUNC3 (int,int /*<<< orphan*/ ,double) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 double FUNC6 (double const) ; 
 double FUNC7 (double) ; 
 double FUNC8 (double) ; 
 double FUNC9 (double) ; 

__attribute__((used)) static double FUNC10(int curve, int64_t index, int64_t range)
{
#define CUBE(a) ((a)*(a)*(a))
    double gain;

    gain = FUNC3(1.0 * index / range, 0, 1.0);

    switch (curve) {
    case QSIN:
        gain = FUNC8(gain * M_PI / 2.0);
        break;
    case IQSIN:
        /* 0.6... = 2 / M_PI */
        gain = 0.6366197723675814 * FUNC2(gain);
        break;
    case ESIN:
        gain = 1.0 - FUNC5(M_PI / 4.0 * (CUBE(2.0*gain - 1) + 1));
        break;
    case HSIN:
        gain = (1.0 - FUNC5(gain * M_PI)) / 2.0;
        break;
    case IHSIN:
        /* 0.3... = 1 / M_PI */
        gain = 0.3183098861837907 * FUNC1(1 - 2 * gain);
        break;
    case EXP:
        /* -11.5... = 5*ln(0.1) */
        gain = FUNC6(-11.512925464970227 * (1 - gain));
        break;
    case LOG:
        gain = FUNC3(1 + 0.2 * FUNC7(gain), 0, 1.0);
        break;
    case PAR:
        gain = 1 - FUNC9(1 - gain);
        break;
    case IPAR:
        gain = (1 - (1 - gain) * (1 - gain));
        break;
    case QUA:
        gain *= gain;
        break;
    case CUB:
        gain = CUBE(gain);
        break;
    case SQU:
        gain = FUNC9(gain);
        break;
    case CBR:
        gain = FUNC4(gain);
        break;
    case DESE:
        gain = gain <= 0.5 ? FUNC4(2 * gain) / 2: 1 - FUNC4(2 * (1 - gain)) / 2;
        break;
    case DESI:
        gain = gain <= 0.5 ? CUBE(2 * gain) / 2: 1 - CUBE(2 * (1 - gain)) / 2;
        break;
    case LOSI: {
                   const double a = 1. / (1. - 0.787) - 1;
                   double A = 1. / (1.0 + FUNC6(0 -((gain-0.5) * a * 2.0)));
                   double B = 1. / (1.0 + FUNC6(a));
                   double C = 1. / (1.0 + FUNC6(0-a));
                   gain = (A - B) / (C - B);
               }
        break;
    case NONE:
        gain = 1.0;
        break;
    }

    return gain;
}
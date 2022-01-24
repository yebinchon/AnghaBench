#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void** s; } ;
struct TYPE_7__ {double* s; } ;
struct TYPE_6__ {double* s; } ;
struct TYPE_9__ {int rotation; TYPE_3__ skew; TYPE_2__ scale; TYPE_1__ translation; } ;
typedef  TYPE_4__ FrameDelta ;

/* Variables and functions */
 int FUNC0 (double) ; 
 int M_PI ; 
 int FUNC1 (double) ; 
 void* FUNC2 (double) ; 
 double FUNC3 (double,double) ; 
 double FUNC4 (double) ; 

__attribute__((used)) static FrameDelta FUNC5(double *model)
{
    FrameDelta ret;

    double a = model[0];
    double c = model[1];
    double e = model[2];
    double b = model[3];
    double d = model[4];
    double f = model[5];
    double delta = a * d - b * c;

    ret.translation.s[0] = e;
    ret.translation.s[1] = f;

    // This is the QR method
    if (a != 0 || b != 0) {
        double r = FUNC3(a, b);

        ret.rotation = FUNC0(b) * FUNC1(a / r);
        ret.scale.s[0] = r;
        ret.scale.s[1] = delta / r;
        ret.skew.s[0] = FUNC2((a * c + b * d) / (r * r));
        ret.skew.s[1] = 0;
    } else if (c != 0 || d != 0) {
        double s = FUNC4(c * c + d * d);

        ret.rotation = M_PI / 2 - FUNC0(d) * FUNC1(-c / s);
        ret.scale.s[0] = delta / s;
        ret.scale.s[1] = s;
        ret.skew.s[0] = 0;
        ret.skew.s[1] = FUNC2((a * c + b * d) / (s * s));
    } // otherwise there is only translation

    return ret;
}
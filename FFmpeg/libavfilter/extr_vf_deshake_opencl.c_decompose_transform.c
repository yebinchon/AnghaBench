
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void** s; } ;
struct TYPE_7__ {double* s; } ;
struct TYPE_6__ {double* s; } ;
struct TYPE_9__ {int rotation; TYPE_3__ skew; TYPE_2__ scale; TYPE_1__ translation; } ;
typedef TYPE_4__ FrameDelta ;


 int FFSIGN (double) ;
 int M_PI ;
 int acos (double) ;
 void* atan (double) ;
 double hypot (double,double) ;
 double sqrt (double) ;

__attribute__((used)) static FrameDelta decompose_transform(double *model)
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


    if (a != 0 || b != 0) {
        double r = hypot(a, b);

        ret.rotation = FFSIGN(b) * acos(a / r);
        ret.scale.s[0] = r;
        ret.scale.s[1] = delta / r;
        ret.skew.s[0] = atan((a * c + b * d) / (r * r));
        ret.skew.s[1] = 0;
    } else if (c != 0 || d != 0) {
        double s = sqrt(c * c + d * d);

        ret.rotation = M_PI / 2 - FFSIGN(d) * acos(-c / s);
        ret.scale.s[0] = delta / s;
        ret.scale.s[1] = s;
        ret.skew.s[0] = 0;
        ret.skew.s[1] = atan((a * c + b * d) / (s * s));
    }

    return ret;
}

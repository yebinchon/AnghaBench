
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double den; scalar_t__ num; } ;
typedef TYPE_1__ hb_rational_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char *aspect_to_string(hb_rational_t *dar)
{
    double aspect = (double)dar->num / dar->den;
    switch ( (int)(aspect * 9.) )
    {
        case 9 * 4 / 3: return "4:3";
        case 9 * 16 / 9: return "16:9";
    }
    static char arstr[32];
    if (aspect >= 1)
        sprintf(arstr, "%.2f:1", aspect);
    else
        sprintf(arstr, "1:%.2f", 1. / aspect );
    return arstr;
}

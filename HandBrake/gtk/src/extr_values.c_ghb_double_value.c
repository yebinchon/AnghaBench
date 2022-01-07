
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdouble ;
typedef int GhbValue ;


 int * json_real (int ) ;
 int json_real_set (int *,int ) ;

GhbValue*
ghb_double_value(gdouble dval)
{
    static GhbValue *gval = ((void*)0);
    if (gval == ((void*)0))
        gval = json_real(dval);
    else
        json_real_set(gval, dval);
    return gval;
}

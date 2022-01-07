
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;
typedef int GhbValue ;


 int * json_integer (int ) ;
 int json_integer_set (int *,int ) ;

GhbValue*
ghb_int_value(gint64 ival)
{
    static GhbValue *gval = ((void*)0);
    if (gval == ((void*)0))
        gval = json_integer(ival);
    else
        json_integer_set(gval, ival);
    return gval;
}

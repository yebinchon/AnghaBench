
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GhbValue ;


 int * json_boolean (int ) ;
 int json_decref (int *) ;

GhbValue*
ghb_boolean_value(gboolean bval)
{

    GhbValue *gval = json_boolean(bval);
    json_decref(gval);
    return gval;
}

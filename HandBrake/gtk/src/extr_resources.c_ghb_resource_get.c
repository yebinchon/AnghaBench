
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GhbValue ;


 int * ghb_dict_get (int ,int const*) ;
 int resources ;

GhbValue*
ghb_resource_get(const gchar *name)
{
    GhbValue *result;
    result = ghb_dict_get(resources, name);
    return result;
}

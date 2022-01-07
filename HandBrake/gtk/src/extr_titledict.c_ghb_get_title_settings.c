
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int * ghb_dict_get (int *,char*) ;

GhbValue *ghb_get_title_settings(GhbValue *settings)
{
    GhbValue *title;
    title = ghb_dict_get(settings, "Title");
    return title;
}

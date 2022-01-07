
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double gdouble ;


 int _ (char*) ;
 char* g_strdup (int ) ;
 char* g_strdup_printf (char*,double) ;

__attribute__((used)) static char * get_drc_string(gdouble drc)
{
    char *s_drc;
    if (drc < 0.99)
        s_drc = g_strdup(_("Off"));
    else
        s_drc = g_strdup_printf("%.1f", drc);
    return s_drc;
}

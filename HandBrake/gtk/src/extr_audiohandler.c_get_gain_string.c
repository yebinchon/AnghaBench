
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double gdouble ;


 int _ (char*) ;
 char* g_strdup_printf (char*,...) ;

__attribute__((used)) static char * get_gain_string(gdouble gain)
{
    char *s_gain;
    if ( gain >= 21.0 )
        s_gain = g_strdup_printf("*11*");
    else
        s_gain = g_strdup_printf(_("%ddB"), (int)gain);
    return s_gain;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GTimeVal ;
typedef int GString ;


 int g_get_current_time (int *) ;
 int g_string_get_time (int *,int *) ;

int g_string_get_current_time(GString *s) {
 GTimeVal gt;

 g_get_current_time(&gt);

 return g_string_get_time(s, &gt);
}

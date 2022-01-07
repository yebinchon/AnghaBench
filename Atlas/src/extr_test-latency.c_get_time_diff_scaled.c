
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gchar ;
struct TYPE_4__ {int * str; } ;
typedef int GTimeVal ;
typedef TYPE_1__ GString ;


 double TIME_DIFF_US (int *,int *) ;
 int g_string_printf (TYPE_1__*,char*,double) ;

gchar * get_time_diff_scaled(GTimeVal *t1, GTimeVal *t2, GString *str) {
 double query_time_us;
 double query_time;
 char *query_time_format = ((void*)0);

 query_time_us = TIME_DIFF_US(t1, t2);

 query_time = query_time_us / 1000.0;
 query_time_format = "%0.3f";

 g_string_printf(str, query_time_format, query_time);

 return str->str;
}

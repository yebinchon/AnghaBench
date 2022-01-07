
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int wiiu_log_write (int *,int ,char const*,int ) ;

void net_print(const char *str)
{
   wiiu_log_write(((void*)0), 0, str, strlen(str));
}

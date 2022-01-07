
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arg ;


 int KERNEL_DEBUG_EARLY (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int MIN (int,int ) ;
 int TRACE_INFO_STRING ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int ) ;

void
kernel_debug_string_early(const char *message)
{
 uintptr_t arg[4] = {0, 0, 0, 0};


 strncpy((char *)arg, message, MIN(sizeof(arg), strlen(message)));
 KERNEL_DEBUG_EARLY(
  TRACE_INFO_STRING,
  arg[0], arg[1], arg[2], arg[3]);
}

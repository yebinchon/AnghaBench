
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ envIsHomebrew () ;
 int strlcpy (char*,char*,size_t) ;

bool frontend_driver_get_core_extension(char *s, size_t len)
{
   strlcpy(s, "elf", len);
   return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t
strlen(
 const char *string)
{
 const char *ret = string;

 while (*string++ != '\0')
  continue;
 return string - 1 - ret;
}

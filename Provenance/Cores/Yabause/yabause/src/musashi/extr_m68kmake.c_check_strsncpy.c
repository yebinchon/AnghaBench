
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_exit (char*) ;

int check_strsncpy(char* dst, char* src, int maxlength)
{
 char* p = dst;
 while(*src && *src != ' ')
 {
  *p++ = *src++;
  if(p - dst > maxlength)
   error_exit("Field too long");
 }
 *p = 0;
 return p - dst;
}

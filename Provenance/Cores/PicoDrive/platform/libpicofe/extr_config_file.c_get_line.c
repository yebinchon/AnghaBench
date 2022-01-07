
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mystrip (char*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void get_line(char *d, size_t size, const char *s)
{
 const char *pe;
 size_t len;

 for (pe = s; *pe != '\r' && *pe != '\n' && *pe != 0; pe++)
  ;
 len = pe - s;
 if (len > size - 1)
  len = size - 1;
 strncpy(d, s, len);
 d[len] = 0;

 mystrip(d);
}

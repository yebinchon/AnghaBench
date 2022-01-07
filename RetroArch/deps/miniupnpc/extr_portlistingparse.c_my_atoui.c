
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNSIGNED_INTEGER ;



__attribute__((used)) static UNSIGNED_INTEGER
my_atoui(const char * p, int l)
{
 UNSIGNED_INTEGER r = 0;
 while(l > 0 && *p)
 {
  if(*p >= '0' && *p <= '9')
   r = r*10 + (*p - '0');
  else
   break;
  p++;
  l--;
 }
 return r;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *sal_uinttos(int value)
{
 static char buf[64],buf2[64];
 char *tmp;
 int len=0;

 tmp=buf;

 while(value)
 {
  *tmp='0'+(value%10);
  len++;
  tmp++;
  value/=10;
 }

 tmp=buf2;
 while(len-- >= 0)
 {
  *tmp=buf[len];
  tmp++;
 }

 *tmp=0;
 return(buf2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int snprintf (char*,size_t,char*,unsigned char,unsigned char,unsigned char,unsigned char) ;

char *
inet_ntoa_r(struct in_addr ina, char *buf, size_t buflen)
{
 unsigned char *ucp = (unsigned char *)&ina;

 snprintf(buf, buflen, "%d.%d.%d.%d",
  ucp[0] & 0xff,
  ucp[1] & 0xff,
  ucp[2] & 0xff,
  ucp[3] & 0xff);
 return buf;
}

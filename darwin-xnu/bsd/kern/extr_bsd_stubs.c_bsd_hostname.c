
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;
 int hostname ;
 int hostnamelen ;
 int strlcpy (char*,int ,int) ;

int
bsd_hostname(char * buf, int bufsize, int * len)
{



 if (hostnamelen < bufsize) {
  strlcpy(buf, hostname, bufsize);
  *len = hostnamelen;
  return 0;
 } else {
  return ENAMETOOLONG;
 }
}

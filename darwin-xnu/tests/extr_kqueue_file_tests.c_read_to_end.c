
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ read (int,char*,int) ;

void
read_to_end(int fd)
{
 char buf[50];
 while (read(fd, buf, sizeof(buf)) > 0);
}

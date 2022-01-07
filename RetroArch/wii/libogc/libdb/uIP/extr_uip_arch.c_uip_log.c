
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,int,char*) ;

void uip_log(const char *filename,int line_nb,char *msg)
{
 printf("%s(%d):\n%s\n",filename,line_nb,msg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {scalar_t__ pth_name; } ;


 int MAXTHREADNAMESIZE ;
 int bcopy (scalar_t__,char*,int ) ;

void
bsd_getthreadname(void *uth, char *buffer)
{
 struct uthread *ut = (struct uthread *)uth;
 if(ut->pth_name)
  bcopy(ut->pth_name,buffer,MAXTHREADNAMESIZE);
}

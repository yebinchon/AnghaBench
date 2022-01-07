
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int dummy; } ;


 int PROC_NULL ;
 int closef_locked (int *,struct fileglob*,int ) ;

void
fileport_releasefg(struct fileglob *fg)
{
 (void)closef_locked(((void*)0), fg, PROC_NULL);

 return;
}

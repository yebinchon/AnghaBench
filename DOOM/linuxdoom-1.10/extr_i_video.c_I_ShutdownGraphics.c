
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int shmid; int shmaddr; } ;
struct TYPE_4__ {int * data; } ;


 int IPC_RMID ;
 int I_Error (char*) ;
 int XShmDetach (int ,TYPE_2__*) ;
 int X_display ;
 TYPE_2__ X_shminfo ;
 TYPE_1__* image ;
 int shmctl (int ,int ,int ) ;
 int shmdt (int ) ;

void I_ShutdownGraphics(void)
{

  if (!XShmDetach(X_display, &X_shminfo))
     I_Error("XShmDetach() failed in I_ShutdownGraphics()");


  shmdt(X_shminfo.shmaddr);
  shmctl(X_shminfo.shmid, IPC_RMID, 0);


  image->data = ((void*)0);
}

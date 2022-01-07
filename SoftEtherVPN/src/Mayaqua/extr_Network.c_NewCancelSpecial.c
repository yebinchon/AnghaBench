
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SpecialFlag; int pipe_read; int pipe_write; scalar_t__ hEvent; int ref; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ CANCEL ;


 int NewRef () ;
 TYPE_1__* ZeroMalloc (int) ;

CANCEL *NewCancelSpecial(void *hEvent)
{
 CANCEL *c;

 if (hEvent == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(CANCEL));
 c->ref = NewRef();
 c->SpecialFlag = 1;




 c->pipe_read = (int)hEvent;
 c->pipe_write = -1;


 return c;
}

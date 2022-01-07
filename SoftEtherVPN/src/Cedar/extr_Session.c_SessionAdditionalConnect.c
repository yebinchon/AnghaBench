
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; } ;
typedef int THREAD ;
typedef TYPE_1__ SESSION ;


 int AddRef (int ) ;
 int ClientAdditionalThread ;
 int * NewThread (int ,void*) ;
 int ReleaseThread (int *) ;
 int WaitThreadInit (int *) ;

void SessionAdditionalConnect(SESSION *s)
{
 THREAD *t;

 if (s == ((void*)0))
 {
  return;
 }



 AddRef(s->ref);
 t = NewThread(ClientAdditionalThread, (void *)s);
 WaitThreadInit(t);
 ReleaseThread(t);
}

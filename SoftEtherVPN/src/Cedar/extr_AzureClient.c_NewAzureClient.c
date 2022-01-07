
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IsEnabled; int MainThread; int Event; int Lock; int * Server; int * Cedar; } ;
typedef int SERVER ;
typedef int CEDAR ;
typedef TYPE_1__ AZURE_CLIENT ;


 int AcMainThread ;
 int NewEvent () ;
 int NewLock () ;
 int NewThread (int ,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

AZURE_CLIENT *NewAzureClient(CEDAR *cedar, SERVER *server)
{
 AZURE_CLIENT *ac;

 if (cedar == ((void*)0) || server == ((void*)0))
 {
  return ((void*)0);
 }

 ac = ZeroMalloc(sizeof(AZURE_CLIENT));

 ac->Cedar = cedar;

 ac->Server = server;

 ac->Lock = NewLock();

 ac->IsEnabled = 0;

 ac->Event = NewEvent();


 ac->MainThread = NewThread(AcMainThread, ac);

 return ac;
}

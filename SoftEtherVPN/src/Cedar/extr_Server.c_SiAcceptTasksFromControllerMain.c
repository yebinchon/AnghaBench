
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int taskname ;
struct TYPE_6__ {int IsConnected; TYPE_1__* Server; } ;
struct TYPE_5__ {int TasksFromFarmControllerLock; } ;
typedef int SOCK ;
typedef int PACK ;
typedef TYPE_2__ FARM_CONTROLLER ;


 int FreePack (int *) ;
 int * HttpClientRecv (int *) ;
 int HttpClientSend (int *,int *) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int) ;
 scalar_t__ PackGetStr (int *,char*,char*,int) ;
 int * SiCalledTask (TYPE_2__*,int *,char*) ;
 int Unlock (int ) ;

void SiAcceptTasksFromControllerMain(FARM_CONTROLLER *f, SOCK *sock)
{
 PACK *request;
 PACK *response;
 char taskname[MAX_SIZE];

 if (f == ((void*)0) || sock == ((void*)0))
 {
  return;
 }

 f->IsConnected = 1;

 while (1)
 {
  bool ret;

  request = HttpClientRecv(sock);
  if (request == ((void*)0))
  {

   break;
  }

  response = ((void*)0);


  if (PackGetStr(request, "taskname", taskname, sizeof(taskname)))
  {
   Lock(f->Server->TasksFromFarmControllerLock);
   {
    response = SiCalledTask(f, request, taskname);
   }
   Unlock(f->Server->TasksFromFarmControllerLock);
  }

  FreePack(request);


  if (response == ((void*)0))
  {
   response = NewPack();
  }
  else
  {
   PackAddInt(response, "succeed", 1);
  }

  ret = HttpClientSend(sock, response);
  FreePack(response);

  if (ret == 0)
  {

   break;
  }
 }

 f->IsConnected = 0;
}

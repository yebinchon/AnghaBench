
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef int WorkerNode ;
struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;
typedef int List ;


 char* ClientHostAddress (TYPE_1__*) ;
 int ERROR ;
 int WORKER_LENGTH ;
 int * WorkerGetNodeWithName (char*) ;
 int * WorkerGetRandomCandidateNode (int *) ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errhint (char*) ;
 int errmsg (char*,char*) ;
 scalar_t__ list_length (int *) ;
 TYPE_1__* makeStringInfo () ;
 char* pstrdup (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

WorkerNode *
WorkerGetLocalFirstCandidateNode(List *currentNodeList)
{
 WorkerNode *candidateNode = ((void*)0);
 uint32 currentNodeCount = list_length(currentNodeList);


 if (currentNodeCount == 0)
 {
  StringInfo clientHostStringInfo = makeStringInfo();
  char *clientHost = ((void*)0);
  char *errorMessage = ClientHostAddress(clientHostStringInfo);

  if (errorMessage != ((void*)0))
  {
   ereport(ERROR, (errmsg("%s", errorMessage),
       errdetail("Could not find the first worker "
           "node for local-node-first policy."),
       errhint("Make sure that you are not on the "
         "master node.")));
  }


  clientHost = clientHostStringInfo->data;
  if (strncmp(clientHost, "localhost.localdomain", WORKER_LENGTH) == 0)
  {
   clientHost = pstrdup("localhost");
  }

  candidateNode = WorkerGetNodeWithName(clientHost);
  if (candidateNode == ((void*)0))
  {
   ereport(ERROR, (errmsg("could not find worker node for "
           "host: %s", clientHost)));
  }
 }
 else
 {

  candidateNode = WorkerGetRandomCandidateNode(currentNodeList);
 }

 return candidateNode;
}

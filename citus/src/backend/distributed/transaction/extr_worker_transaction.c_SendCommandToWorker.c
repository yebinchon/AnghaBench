
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 char* CitusExtensionOwnerName () ;
 int SendCommandToWorkerAsUser (char*,int ,char const*,char const*) ;

void
SendCommandToWorker(char *nodeName, int32 nodePort, const char *command)
{
 const char *nodeUser = CitusExtensionOwnerName();
 SendCommandToWorkerAsUser(nodeName, nodePort, nodeUser, command);
}

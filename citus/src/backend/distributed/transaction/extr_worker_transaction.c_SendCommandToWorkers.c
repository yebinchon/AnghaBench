
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TargetWorkerSet ;


 int CitusExtensionOwnerName () ;
 int SendCommandToWorkersParams (int ,char const*,int ,int ,int *,int *) ;

void
SendCommandToWorkers(TargetWorkerSet targetWorkerSet, const char *command)
{
 SendCommandToWorkersParams(targetWorkerSet, command, CitusExtensionOwnerName(),
          0, ((void*)0), ((void*)0));
}

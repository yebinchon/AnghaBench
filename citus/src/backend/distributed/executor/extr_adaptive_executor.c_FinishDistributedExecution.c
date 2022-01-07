
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DistributedExecution ;


 scalar_t__ DistributedExecutionModifiesDatabase (int *) ;
 int UnsetCitusNoticeLevel () ;
 int XACT_MODIFICATION_DATA ;
 int XactModificationLevel ;

__attribute__((used)) static void
FinishDistributedExecution(DistributedExecution *execution)
{
 UnsetCitusNoticeLevel();

 if (DistributedExecutionModifiesDatabase(execution))
 {

  XactModificationLevel = XACT_MODIFICATION_DATA;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commandType; } ;
typedef TYPE_1__ Query ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ CmdType ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_SELECT ;
 scalar_t__ CMD_UPDATE ;
 int CitusHasBeenLoaded () ;
 int ExtractRangeTableEntryWalker (int *,int **) ;
 int ListContainsDistributedTableRTE (int *) ;
 int * NIL ;

bool
NeedsDistributedPlanning(Query *query)
{
 List *allRTEs = NIL;
 CmdType commandType = query->commandType;

 if (!CitusHasBeenLoaded())
 {
  return 0;
 }

 if (commandType != CMD_SELECT && commandType != CMD_INSERT &&
  commandType != CMD_UPDATE && commandType != CMD_DELETE)
 {
  return 0;
 }

 ExtractRangeTableEntryWalker((Node *) query, &allRTEs);

 return ListContainsDistributedTableRTE(allRTEs);
}

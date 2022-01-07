
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * taskPlacementList; } ;
typedef TYPE_1__ Task ;
struct TYPE_10__ {scalar_t__ format; int indent; int str; } ;
typedef int ShardPlacement ;
typedef int List ;
typedef TYPE_2__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainCloseGroup (char*,int *,int,TYPE_2__*) ;
 int ExplainOpenGroup (char*,int *,int,TYPE_2__*) ;
 int ExplainPropertyText (char*,char*,TYPE_2__*) ;
 int ExplainTaskPlacement (int *,int *,TYPE_2__*) ;
 int * NIL ;
 int appendStringInfo (int ,char*) ;
 int appendStringInfoSpaces (int ,int) ;
 int * list_nth (int *,int) ;

__attribute__((used)) static void
ExplainTask(Task *task, int placementIndex, List *explainOutputList, ExplainState *es)
{
 ExplainOpenGroup("Task", ((void*)0), 1, es);

 if (es->format == EXPLAIN_FORMAT_TEXT)
 {
  appendStringInfoSpaces(es->str, es->indent * 2);
  appendStringInfo(es->str, "->  Task\n");
  es->indent += 3;
 }

 if (explainOutputList != NIL)
 {
  List *taskPlacementList = task->taskPlacementList;
  ShardPlacement *taskPlacement = list_nth(taskPlacementList, placementIndex);

  ExplainTaskPlacement(taskPlacement, explainOutputList, es);
 }
 else
 {
  ExplainPropertyText("Error", "Could not get remote plan.", es);
 }

 ExplainCloseGroup("Task", ((void*)0), 1, es);

 if (es->format == EXPLAIN_FORMAT_TEXT)
 {
  es->indent -= 3;
 }
}

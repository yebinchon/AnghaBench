
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int queryString; int * relationShardList; int anchorShardId; int * rowValuesLists; } ;
typedef TYPE_1__ Task ;
struct TYPE_16__ {scalar_t__ commandType; } ;
struct TYPE_15__ {scalar_t__ rtekind; int * values_lists; } ;
struct TYPE_14__ {int data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef TYPE_4__ Query ;
typedef int Oid ;
typedef int Node ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ CMD_INSERT ;
 int * NIL ;
 scalar_t__ RTE_VALUES ;
 int UpdateRelationToShardNames (int *,int *) ;
 int deparse_shard_query (TYPE_4__*,int ,int ,TYPE_2__*) ;
 TYPE_2__* makeStringInfo () ;
 int pg_get_query_def (TYPE_4__*,TYPE_2__*) ;

__attribute__((used)) static void
UpdateTaskQueryString(Query *query, Oid distributedTableId, RangeTblEntry *valuesRTE,
       Task *task)
{
 StringInfo queryString = makeStringInfo();
 List *oldValuesLists = NIL;

 if (valuesRTE != ((void*)0))
 {
  Assert(valuesRTE->rtekind == RTE_VALUES);
  Assert(task->rowValuesLists != ((void*)0));

  oldValuesLists = valuesRTE->values_lists;
  valuesRTE->values_lists = task->rowValuesLists;
 }







 if (query->commandType == CMD_INSERT)
 {
  deparse_shard_query(query, distributedTableId, task->anchorShardId, queryString);
 }
 else
 {
  List *relationShardList = task->relationShardList;
  UpdateRelationToShardNames((Node *) query, relationShardList);

  pg_get_query_def(query, queryString);
 }

 if (valuesRTE != ((void*)0))
 {
  valuesRTE->values_lists = oldValuesLists;
 }

 task->queryString = queryString->data;
}

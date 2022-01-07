
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeTblEntry ;
typedef int List ;
typedef int CitusRTEKind ;


 int ExtractRangeTblExtraData (int *,int *,char**,char**,int **) ;
 int * NIL ;
 int SetRangeTblExtraData (int *,int ,char*,char*,int *) ;

void
ModifyRangeTblExtraData(RangeTblEntry *rte, CitusRTEKind rteKind,
      char *fragmentSchemaName, char *fragmentTableName,
      List *tableIdList)
{

 ExtractRangeTblExtraData(rte, ((void*)0),
        fragmentSchemaName == ((void*)0) ? &fragmentSchemaName : ((void*)0),
        fragmentTableName == ((void*)0) ? &fragmentTableName : ((void*)0),
        tableIdList == NIL ? &tableIdList : ((void*)0));

 SetRangeTblExtraData(rte, rteKind,
       fragmentSchemaName, fragmentTableName,
       tableIdList);
}

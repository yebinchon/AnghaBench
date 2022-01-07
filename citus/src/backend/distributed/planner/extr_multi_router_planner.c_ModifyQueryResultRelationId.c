
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relid; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int Query ;
typedef int Oid ;


 int Assert (int ) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 TYPE_1__* ExtractResultRelationRTE (int *) ;
 int IsModifyCommand (int *) ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

Oid
ModifyQueryResultRelationId(Query *query)
{
 RangeTblEntry *resultRte = ((void*)0);


 if (!IsModifyCommand(query))
 {
  ereport(ERROR, (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
      errmsg("input query is not a modification query")));
 }

 resultRte = ExtractResultRelationRTE(query);
 Assert(OidIsValid(resultRte->relid));

 return resultRte->relid;
}

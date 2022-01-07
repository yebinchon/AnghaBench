
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int oid; int args; struct TYPE_3__* next; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__* FuncCandidateList ;


 int ERROR ;
 TYPE_1__* FuncnameGetCandidates (int *,int,int ,int,int,int) ;
 int InvalidOid ;
 int NIL ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 int * list_make2 (int ,int ) ;
 int makeString (char*) ;
 scalar_t__ memcmp (int ,int *,int) ;

__attribute__((used)) static Oid
CitusFunctionOidWithSignature(char *functionName, int numargs, Oid *argtypes)
{
 List *aggregateName = list_make2(makeString("citus"), makeString(functionName));
 FuncCandidateList clist = FuncnameGetCandidates(aggregateName, numargs, NIL, 0,
             0, 1);

 for (; clist; clist = clist->next)
 {
  if (memcmp(clist->args, argtypes, numargs * sizeof(Oid)) == 0)
  {
   return clist->oid;
  }
 }

 ereport(ERROR, (errmsg("no matching oid for function: %s", functionName)));
 return InvalidOid;
}

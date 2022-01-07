
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expr; } ;
typedef TYPE_1__ TargetEntry ;
struct TYPE_5__ {int * args; } ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef TYPE_2__ Aggref ;


 int Assert (int) ;
 int exprType (int *) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;

__attribute__((used)) static Oid
AggregateArgumentType(Aggref *aggregate)
{
 List *argumentList = aggregate->args;
 TargetEntry *argument = (TargetEntry *) linitial(argumentList);
 Oid returnTypeId = exprType((Node *) argument->expr);


 Assert(list_length(argumentList) == 1);

 return returnTypeId;
}

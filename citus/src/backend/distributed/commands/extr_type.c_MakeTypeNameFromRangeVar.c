
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {scalar_t__ relname; scalar_t__ schemaname; } ;
typedef TYPE_1__ RangeVar ;
typedef int List ;


 int * NIL ;
 int * lappend (int *,int ) ;
 int makeString (scalar_t__) ;
 int * makeTypeNameFromNameList (int *) ;

__attribute__((used)) static TypeName *
MakeTypeNameFromRangeVar(const RangeVar *relation)
{
 List *names = NIL;
 if (relation->schemaname)
 {
  names = lappend(names, makeString(relation->schemaname));
 }
 names = lappend(names, makeString(relation->relname));

 return makeTypeNameFromNameList(names);
}

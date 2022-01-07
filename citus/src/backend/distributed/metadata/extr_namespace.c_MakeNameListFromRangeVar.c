
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * relname; int * schemaname; int * catalogname; } ;
typedef TYPE_1__ RangeVar ;
typedef int List ;


 int Assert (int ) ;
 int * list_make1 (int ) ;
 int * list_make2 (int ,int ) ;
 int * list_make3 (int ,int ,int ) ;
 int makeString (int *) ;

List *
MakeNameListFromRangeVar(const RangeVar *rel)
{
 if (rel->catalogname != ((void*)0))
 {
  Assert(rel->schemaname != ((void*)0));
  Assert(rel->relname != ((void*)0));
  return list_make3(makeString(rel->catalogname),
        makeString(rel->schemaname),
        makeString(rel->relname));
 }
 else if (rel->schemaname != ((void*)0))
 {
  Assert(rel->relname != ((void*)0));
  return list_make2(makeString(rel->schemaname),
        makeString(rel->relname));
 }
 else
 {
  Assert(rel->relname != ((void*)0));
  return list_make1(makeString(rel->relname));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int Node ;
typedef int List ;


 int ExtractRangeTableEntryWalker (int *,int **) ;
 int * NIL ;

List *
ExtractRangeTableEntryList(Query *query)
{
 List *rangeTblList = NIL;

 ExtractRangeTableEntryWalker((Node *) query, &rangeTblList);

 return rangeTblList;
}

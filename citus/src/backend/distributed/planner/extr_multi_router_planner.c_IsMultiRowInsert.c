
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;


 int * ExtractDistributedInsertValuesRTE (int *) ;

bool
IsMultiRowInsert(Query *query)
{
 return ExtractDistributedInsertValuesRTE(query) != ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int Insert (int *,char*) ;
 int * Search (int *,char*) ;

bool InsertStr(LIST *o, char *str)
{

 if (o == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (Search(o, str) == ((void*)0))
 {
  Insert(o, str);

  return 1;
 }

 return 0;
}

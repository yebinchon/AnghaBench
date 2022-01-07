
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ITEM ;
typedef int FOLDER ;


 int * CfgFindItem (int *,char*) ;

bool CfgIsItem(FOLDER *f, char *name)
{
 ITEM *t;

 if (f == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 t = CfgFindItem(f, name);
 if (t == ((void*)0))
 {
  return 0;
 }

 return 1;
}

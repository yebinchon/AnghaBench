
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB ;
typedef int CEDAR ;


 int * GetHub (int *,char*) ;
 int ReleaseHub (int *) ;

bool IsHub(CEDAR *cedar, char *name)
{
 HUB *h;

 if (cedar == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 h = GetHub(cedar, name);
 if (h == ((void*)0))
 {
  return 0;
 }

 ReleaseHub(h);

 return 1;
}

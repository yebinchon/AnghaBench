
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;


 int IsElement (int *,char*) ;

bool PackIsValueExists(PACK *p, char *name)
{

 if (p == ((void*)0) || name == ((void*)0))
 {
  return 0;
 }

 return IsElement(p, name);
}

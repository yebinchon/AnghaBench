
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HUB ;


 int * SearchSessionByUniqueId (int *,int) ;

UINT GetNewUniqueId(HUB *h)
{
 UINT id;

 if (h == ((void*)0))
 {
  return 0;
 }

 for (id = 1;;id++)
 {
  if (SearchSessionByUniqueId(h, id) == ((void*)0))
  {
   return id;
  }
 }
}

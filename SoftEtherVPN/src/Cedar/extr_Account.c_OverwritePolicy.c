
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {scalar_t__ Ver3; } ;
typedef TYPE_1__ POLICY ;


 TYPE_1__* ClonePolicy (TYPE_1__*) ;
 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 int Free (TYPE_1__*) ;
 int NUM_POLICY_ITEM_FOR_VER2 ;

void OverwritePolicy(POLICY **target, POLICY *p)
{

 if (target == ((void*)0))
 {
  return;
 }

 if (p == ((void*)0))
 {

  if (*target != ((void*)0))
  {
   Free(*target);
   *target = ((void*)0);
  }
 }
 else
 {
  if (p->Ver3)
  {

   if (*target != ((void*)0))
   {
    Free(*target);
    *target = ((void*)0);
   }

   *target = ClonePolicy(p);
  }
  else
  {

   if (*target == ((void*)0))
   {
    *target = ClonePolicy(p);
   }
   else
   {
    Copy(*target, p, NUM_POLICY_ITEM_FOR_VER2 * sizeof(UINT));
   }
  }
 }
}

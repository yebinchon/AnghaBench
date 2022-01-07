
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ INFINITE ;
 scalar_t__ NUM_POLICY_ITEM ;
 int PolicyIdToStr (scalar_t__) ;
 scalar_t__ StartWith (int ,char*) ;

UINT PolicyStrToId(char *name)
{
 UINT i;

 if (name == ((void*)0))
 {
  return INFINITE;
 }

 for (i = 0;i < NUM_POLICY_ITEM;i++)
 {
  if (StartWith(PolicyIdToStr(i), name))
  {
   return i;
  }
 }

 return INFINITE;
}

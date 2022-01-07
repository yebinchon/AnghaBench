
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int * _UU (char*) ;

wchar_t *GetHubTypeStr(UINT type)
{
 if (type == HUB_TYPE_FARM_STATIC)
 {
  return _UU("SM_HUB_STATIC");
 }
 else if (type == HUB_TYPE_FARM_DYNAMIC)
 {
  return _UU("SM_HUB_DYNAMIC");
 }
 return _UU("SM_HUB_STANDALONE");
}

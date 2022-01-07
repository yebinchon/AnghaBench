
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ UINT ;


 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SERVER_TYPE_FARM_MEMBER ;
 int * _UU (char*) ;

wchar_t *GetServerTypeStr(UINT type)
{
 if (type == SERVER_TYPE_FARM_CONTROLLER)
 {
  return _UU("SM_FARM_CONTROLLER");
 }
 else if (type == SERVER_TYPE_FARM_MEMBER)
 {
  return _UU("SM_FARM_MEMBER");
 }
 return _UU("SM_SERVER_STANDALONE");
}

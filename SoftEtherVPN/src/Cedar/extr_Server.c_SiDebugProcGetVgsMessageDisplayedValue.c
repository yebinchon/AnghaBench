
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int VgsMessageDisplayed; } ;
typedef TYPE_1__ SERVER ;


 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int ToStr (char*,int) ;
 int VgDoNotPopupMessage () ;

UINT SiDebugProcGetVgsMessageDisplayedValue(SERVER *s, char *in_str, char *ret_str, UINT ret_str_size)
{

 if (s == ((void*)0) || in_str == ((void*)0) || ret_str == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }
 ToStr(ret_str, 1);


 return ERR_NO_ERROR;
}

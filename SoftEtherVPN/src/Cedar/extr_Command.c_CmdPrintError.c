
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int (* Write ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ CONSOLE ;


 scalar_t__ ERR_DISCONNECTED ;
 int GetUniErrorStr (scalar_t__) ;
 int MAX_SIZE ;
 int UniFormat (int *,int,int *,scalar_t__,int ) ;
 int * _UU (char*) ;
 int stub1 (TYPE_1__*,int *) ;
 int stub2 (TYPE_1__*,int *) ;

void CmdPrintError(CONSOLE *c, UINT err)
{
 wchar_t tmp[MAX_SIZE];

 if (c == ((void*)0))
 {
  return;
 }

 UniFormat(tmp, sizeof(tmp), _UU("CMD_VPNCMD_ERROR"),
  err, GetUniErrorStr(err));
 c->Write(c, tmp);

 if (err == ERR_DISCONNECTED)
 {
  c->Write(c, _UU("CMD_DISCONNECTED_MSG"));
 }
}

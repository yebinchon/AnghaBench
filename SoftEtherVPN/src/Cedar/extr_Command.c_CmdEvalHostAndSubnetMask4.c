
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ CONSOLE ;


 int MAX_SIZE ;
 int ParseIpAndSubnetMask4 (char*,int *,int *) ;
 int UniToStr (char*,int,int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalHostAndSubnetMask4(CONSOLE *c, wchar_t *str, void *param)
{
 char tmp[MAX_SIZE];

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), str);

 if (ParseIpAndSubnetMask4(tmp, ((void*)0), ((void*)0)) == 0)
 {
  c->Write(c, _UU("CMD_PARSE_IP_SUBNET_ERROR_1"));
  return 0;
 }

 return 1;
}

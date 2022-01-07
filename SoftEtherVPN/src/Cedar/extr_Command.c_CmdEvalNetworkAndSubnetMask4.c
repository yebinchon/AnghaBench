
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;
struct TYPE_5__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ CONSOLE ;


 int IsNetworkAddress32 (int ,int ) ;
 int MAX_SIZE ;
 int ParseIpAndSubnetMask4 (char*,int *,int *) ;
 int UniToStr (char*,int,int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;

bool CmdEvalNetworkAndSubnetMask4(CONSOLE *c, wchar_t *str, void *param)
{
 char tmp[MAX_SIZE];
 UINT ip, mask;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), str);

 if (ParseIpAndSubnetMask4(tmp, &ip, &mask) == 0)
 {
  c->Write(c, _UU("CMD_PARSE_IP_SUBNET_ERROR_1"));
  return 0;
 }

 if (IsNetworkAddress32(ip, mask) == 0)
 {
  c->Write(c, _UU("CMD_PARSE_IP_SUBNET_ERROR_2"));
  return 0;
 }

 return 1;
}

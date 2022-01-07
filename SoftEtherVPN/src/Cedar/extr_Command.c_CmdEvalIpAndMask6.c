
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_4__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef int IP ;
typedef TYPE_1__ CONSOLE ;


 int MAX_SIZE ;
 int ParseIpAndMask6 (char*,int *,int *) ;
 int UniToStr (char*,int,int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;

bool CmdEvalIpAndMask6(CONSOLE *c, wchar_t *str, void *param)
{
 char tmp[MAX_SIZE];
 IP ip, mask;

 if (c == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 UniToStr(tmp, sizeof(tmp), str);

 if (ParseIpAndMask6(tmp, &ip, &mask) == 0)
 {
  c->Write(c, _UU("CMD_PARSE_IP_MASK_ERROR_1_6"));
  return 0;
 }

 return 1;
}

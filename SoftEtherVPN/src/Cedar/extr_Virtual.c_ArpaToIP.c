
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_9__ {scalar_t__* addr; } ;
struct TYPE_8__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ IP ;


 int FreeToken (TYPE_1__*) ;
 scalar_t__ IPToUINT (TYPE_2__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ ToInt (int ) ;
 int Zero (TYPE_2__*,int) ;

bool ArpaToIP(IP *ip, char *str)
{
 TOKEN_LIST *token;
 bool ret = 0;

 if (ip == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }


 token = ParseToken(str, ".");
 if (token->NumTokens == 6)
 {

  UINT i;
  Zero(ip, sizeof(IP));
  for (i = 0;i < 4;i++)
  {
   ip->addr[i] = (UCHAR)ToInt(token->Token[3 - i]);
  }
  ret = 1;
 }

 FreeToken(token);

 if (IPToUINT(ip) == 0)
 {
  ret = 0;
 }

 return ret;
}

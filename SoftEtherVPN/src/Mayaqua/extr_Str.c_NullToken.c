
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* Token; } ;
typedef TYPE_1__ TOKEN_LIST ;


 void* ZeroMalloc (int) ;

TOKEN_LIST *NullToken()
{
 TOKEN_LIST *ret = ZeroMalloc(sizeof(TOKEN_LIST));
 ret->Token = ZeroMalloc(0);

 return ret;
}

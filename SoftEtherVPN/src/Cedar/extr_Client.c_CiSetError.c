
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Err; } ;
typedef TYPE_1__ CLIENT ;



void CiSetError(CLIENT *c, UINT err)
{

 if (c == ((void*)0))
 {
  return;
 }

 c->Err = err;
}

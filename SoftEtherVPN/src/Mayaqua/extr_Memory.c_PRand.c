
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rc4; } ;
typedef TYPE_1__ PRAND ;


 int Encrypt (int ,void*,void*,int ) ;
 int Zero (void*,int ) ;

void PRand(PRAND *p, void *data, UINT size)
{
 if (p == ((void*)0))
 {
  return;
 }

 Zero(data, size);

 Encrypt(p->Rc4, data, data, size);
}

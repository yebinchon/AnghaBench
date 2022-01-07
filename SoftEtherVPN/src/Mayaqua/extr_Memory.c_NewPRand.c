
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dummy ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int Rc4; int Key; } ;
typedef TYPE_1__ PRAND ;


 int Encrypt (int ,int *,int *,int) ;
 int NewCrypt (void*,int) ;
 int Sha1 (int ,void*,int) ;
 int Zero (int *,int) ;
 TYPE_1__* ZeroMalloc (int) ;

PRAND *NewPRand(void *key, UINT key_size)
{
 PRAND *r;
 UCHAR dummy[256];
 if (key == ((void*)0) || key_size == 0)
 {
  key = "DUMMY";
  key_size = 5;
 }

 r = ZeroMalloc(sizeof(PRAND));

 Sha1(r->Key, key, key_size);

 r->Rc4 = NewCrypt(key, key_size);

 Zero(dummy, sizeof(dummy));

 Encrypt(r->Rc4, dummy, dummy, 256);

 return r;
}

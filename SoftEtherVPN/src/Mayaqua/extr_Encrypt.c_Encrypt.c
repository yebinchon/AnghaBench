
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Rc4Key; } ;
typedef TYPE_1__ CRYPT ;


 int RC4 (int ,int ,void*,void*) ;

void Encrypt(CRYPT *c, void *dst, void *src, UINT size)
{
 RC4(c->Rc4Key, size, src, dst);
}

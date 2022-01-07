
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rc4_key_st {int dummy; } ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int Rc4Key; } ;
typedef TYPE_1__ CRYPT ;


 int Malloc (int) ;
 int RC4_set_key (int ,int ,int *) ;
 TYPE_1__* ZeroMalloc (int) ;

CRYPT *NewCrypt(void *key, UINT size)
{
 CRYPT *c = ZeroMalloc(sizeof(CRYPT));

 c->Rc4Key = Malloc(sizeof(struct rc4_key_st));

 RC4_set_key(c->Rc4Key, size, (UCHAR *)key);

 return c;
}

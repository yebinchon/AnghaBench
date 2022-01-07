
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int IsHMac; int const* Md; void* Ctx; } ;
typedef TYPE_1__ MD ;
typedef int HMAC_CTX ;
typedef int EVP_MD ;


 int Debug (char*) ;
 int FreeMd (TYPE_1__*) ;
 int HMAC_CTX_init (void*) ;
 void* HMAC_CTX_new () ;
 scalar_t__ MdProcess (TYPE_1__*,void*,void*,scalar_t__ const) ;
 int SetMdKey (TYPE_1__*,void*,scalar_t__) ;
 void* ZeroMalloc (int) ;

__attribute__((used)) static UINT Internal_HMac(const EVP_MD *md, void *dest, void *key, UINT key_size, const void *src, const UINT src_size)
{
 MD *m;
 UINT len = 0;


 if (md == ((void*)0) || dest == ((void*)0) || key == ((void*)0) || key_size == 0 || (src == ((void*)0) && src_size != 0))
 {
  return 0;
 }

 m = ZeroMalloc(sizeof(MD));



 m->Ctx = ZeroMalloc(sizeof(HMAC_CTX));
 HMAC_CTX_init(m->Ctx);

 m->Md = md;
 m->IsHMac = 1;

 if (SetMdKey(m, key, key_size) == 0)
 {
  Debug("Internal_HMac(): SetMdKey() failed!\n");
  goto final;
 }

 len = MdProcess(m, dest, (void *)src, src_size);
 if (len == 0)
 {
  Debug("Internal_HMac(): MdProcess() returned 0!\n");
 }

final:
 FreeMd(m);
 return len;
}

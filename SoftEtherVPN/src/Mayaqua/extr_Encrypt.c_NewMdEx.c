
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hmac_ctx_st {int dummy; } ;
struct evp_md_st {int dummy; } ;
struct TYPE_4__ {int IsNullMd; int IsHMac; struct evp_md_st const* Md; void* Ctx; int Size; int Name; } ;
typedef TYPE_1__ MD ;
typedef int EVP_MD ;


 int Debug (char*,int ) ;
 int EVP_DigestInit_ex (void*,struct evp_md_st const*,int *) ;
 void* EVP_MD_CTX_create () ;
 void* EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 scalar_t__ EVP_get_digestbyname (char*) ;
 int FreeMd (TYPE_1__*) ;
 int HMAC_CTX_init (void*) ;
 void* HMAC_CTX_new () ;
 scalar_t__ IsEmptyStr (char*) ;
 int OpenSSL_Error () ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 void* ZeroMalloc (int) ;

MD *NewMdEx(char *name, bool hmac)
{
 MD *m;


 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 m = ZeroMalloc(sizeof(MD));

 StrCpy(m->Name, sizeof(m->Name), name);

 if (StrCmpi(name, "[null-digest]") == 0 ||
  StrCmpi(name, "NULL") == 0 ||
  IsEmptyStr(name))
 {
  m->IsNullMd = 1;
  return m;
 }

 m->Md = (const struct evp_md_st *)EVP_get_digestbyname(name);
 if (m->Md == ((void*)0))
 {
  Debug("NewMdEx(): Algorithm %s not found by EVP_get_digestbyname().\n", m->Name);
  FreeMd(m);
  return ((void*)0);
 }

 m->Size = EVP_MD_size((const EVP_MD *)m->Md);
 m->IsHMac = hmac;

 if (hmac)
 {



  m->Ctx = ZeroMalloc(sizeof(struct hmac_ctx_st));
  HMAC_CTX_init(m->Ctx);

 }
 else
 {



  m->Ctx = EVP_MD_CTX_create();

  if (EVP_DigestInit_ex(m->Ctx, m->Md, ((void*)0)) == 0)
  {
   Debug("NewMdEx(): EVP_DigestInit_ex() failed with error: %s\n", OpenSSL_Error());
   FreeMd(m);
  }
 }

 return m;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char HMAC_CTX ;
typedef int EVP_MD ;
typedef int A1 ;


 int EVP_MAX_MD_SIZE ;
 int EVP_MD_size (int const*) ;
 int HMAC_CTX_cleanup (unsigned char*) ;
 int HMAC_CTX_free (unsigned char*) ;
 unsigned char* HMAC_CTX_new () ;
 int HMAC_Final (unsigned char*,unsigned char*,unsigned int*) ;
 int HMAC_Init_ex (unsigned char*,unsigned char const*,int,int const*,int *) ;
 int HMAC_Update (unsigned char*,unsigned char const*,int) ;
 int Zero (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

void Enc_tls1_P_hash(const EVP_MD *md, const unsigned char *sec, int sec_len,
     const unsigned char *seed, int seed_len, unsigned char *out, int olen)
{
 int chunk,n;
 unsigned int j;
 HMAC_CTX *ctx;
 HMAC_CTX *ctx_tmp;
 unsigned char A1[EVP_MAX_MD_SIZE];
 unsigned int A1_len;





 HMAC_CTX ctx_;
 HMAC_CTX ctx_tmp_;
 ctx = &ctx_;
 ctx_tmp = &ctx_tmp_;
 Zero(ctx, sizeof(HMAC_CTX));
 Zero(ctx_tmp, sizeof(HMAC_CTX));

 chunk=EVP_MD_size(md);

 HMAC_Init_ex(ctx,sec,sec_len,md, ((void*)0));
 HMAC_Init_ex(ctx_tmp,sec,sec_len,md, ((void*)0));
 HMAC_Update(ctx,seed,seed_len);
 HMAC_Final(ctx,A1,&A1_len);

 n=0;
 for (;;)
 {
  HMAC_Init_ex(ctx,((void*)0),0,((void*)0),((void*)0));
  HMAC_Init_ex(ctx_tmp,((void*)0),0,((void*)0),((void*)0));
  HMAC_Update(ctx,A1,A1_len);
  HMAC_Update(ctx_tmp,A1,A1_len);
  HMAC_Update(ctx,seed,seed_len);

  if (olen > chunk)
  {
   HMAC_Final(ctx,out,&j);
   out+=j;
   olen-=j;
   HMAC_Final(ctx_tmp,A1,&A1_len);
  }
  else
  {
   HMAC_Final(ctx,A1,&A1_len);
   memcpy(out,A1,olen);
   break;
  }
 }




 HMAC_CTX_cleanup(ctx);
 HMAC_CTX_cleanup(ctx_tmp);

 Zero (A1, sizeof(A1));
}

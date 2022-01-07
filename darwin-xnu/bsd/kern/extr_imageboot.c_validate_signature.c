
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int rsa_pub_ctx ;
typedef int exponent ;


 int AUTHPRNT (char*) ;
 int CC_DIGEST_OID_SHA256 ;
 int CHUNKLIST_PUBKEY_LEN ;
 int EINVAL ;
 int ENOMEM ;
 int INVALID_SIG ;
 int SHA256_DIGEST_LENGTH ;
 int bzero (int*,int) ;
 int* kalloc (size_t) ;
 int key_byteswap (int*,int const*,size_t) ;
 int kfree_safe (int*) ;
 int rsa_make_pub (int*,int,int const*,int ,int*) ;
 int rsa_verify_pkcs1v15 (int*,int ,int ,int*,size_t,int*,int*) ;

__attribute__((used)) static int
validate_signature(const uint8_t *key_msb, size_t keylen, uint8_t *sig_msb, size_t siglen, uint8_t *digest)
{
 int err = 0;
 bool sig_valid = 0;
 uint8_t *sig = ((void*)0);

 const uint8_t exponent[] = { 0x01, 0x00, 0x01 };
 uint8_t *modulus = kalloc(keylen);
 rsa_pub_ctx *rsa_ctx = kalloc(sizeof(rsa_pub_ctx));
 sig = kalloc(siglen);

 if (modulus == ((void*)0) || rsa_ctx == ((void*)0) || sig == ((void*)0)) {
  err = ENOMEM;
  goto out;
 }

 bzero(rsa_ctx, sizeof(rsa_pub_ctx));
 key_byteswap(modulus, key_msb, keylen);
 key_byteswap(sig, sig_msb, siglen);

 err = rsa_make_pub(rsa_ctx,
   sizeof(exponent), exponent,
   CHUNKLIST_PUBKEY_LEN, modulus);
 if (err) {
  AUTHPRNT("rsa_make_pub() failed");
  goto out;
 }

 err = rsa_verify_pkcs1v15(rsa_ctx, CC_DIGEST_OID_SHA256,
   SHA256_DIGEST_LENGTH, digest,
   siglen, sig,
   &sig_valid);
 if (err) {
  sig_valid = 0;
  AUTHPRNT("rsa_verify() failed");
  err = EINVAL;
  goto out;
 }

out:
 kfree_safe(sig);
 kfree_safe(rsa_ctx);
 kfree_safe(modulus);

 if (err) {
  return err;
 } else if (sig_valid == 1) {
  return 0;
 } else {
  return INVALID_SIG;
 }
}

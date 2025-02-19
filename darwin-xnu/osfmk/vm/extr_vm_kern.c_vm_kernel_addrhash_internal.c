
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint64_t ;
typedef int salt ;
typedef int addr ;
typedef int SHA256_CTX ;


 int SHA256_DIGEST_LENGTH ;
 int SHA256_Final (int *,int *) ;
 int SHA256_Init (int *) ;
 int SHA256_Update (int *,int *,int) ;
 scalar_t__ VM_KERNEL_IS_SLID (int ) ;
 int VM_KERNEL_UNSLIDE (int ) ;
 int assert (int) ;

__attribute__((used)) static void
vm_kernel_addrhash_internal(
 vm_offset_t addr,
 vm_offset_t *hash_addr,
 uint64_t salt)
{
 assert(salt != 0);

 if (addr == 0) {
  *hash_addr = 0;
  return;
 }

 if (VM_KERNEL_IS_SLID(addr)) {
  *hash_addr = VM_KERNEL_UNSLIDE(addr);
  return;
 }

 vm_offset_t sha_digest[SHA256_DIGEST_LENGTH/sizeof(vm_offset_t)];
 SHA256_CTX sha_ctx;

 SHA256_Init(&sha_ctx);
 SHA256_Update(&sha_ctx, &salt, sizeof(salt));
 SHA256_Update(&sha_ctx, &addr, sizeof(addr));
 SHA256_Final(sha_digest, &sha_ctx);

 *hash_addr = sha_digest[0];
}

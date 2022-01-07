
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ nt_password_hash (int const*,size_t,int *) ;
 int nt_password_hash_encrypted_with_block (int *,int *,int *) ;

int old_nt_password_hash_encrypted_with_new_nt_password_hash(
 const u8 *new_password, size_t new_password_len,
 const u8 *old_password, size_t old_password_len,
 u8 *encrypted_password_hash)
{
 u8 old_password_hash[16], new_password_hash[16];

 if (nt_password_hash(old_password, old_password_len,
        old_password_hash) ||
     nt_password_hash(new_password, new_password_len,
        new_password_hash))
  return -1;
 nt_password_hash_encrypted_with_block(old_password_hash,
           new_password_hash,
           encrypted_password_hash);
 return 0;
}

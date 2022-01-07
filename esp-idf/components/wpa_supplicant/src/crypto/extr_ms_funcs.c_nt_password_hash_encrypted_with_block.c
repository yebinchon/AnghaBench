
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int des_encrypt (int const*,int const*,int *) ;

void nt_password_hash_encrypted_with_block(const u8 *password_hash,
          const u8 *block, u8 *cypher)
{
 des_encrypt(password_hash, block, cypher);
 des_encrypt(password_hash + 8, block + 7, cypher + 8);
}

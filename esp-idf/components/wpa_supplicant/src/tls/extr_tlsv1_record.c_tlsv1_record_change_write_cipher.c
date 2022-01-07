
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_record_layer {scalar_t__ cipher_alg; int * write_cbc; int key_material_len; int write_key; int write_iv; int write_seq_num; int cipher_suite; int write_cipher_suite; } ;


 scalar_t__ CRYPTO_CIPHER_NULL ;
 int MSG_DEBUG ;
 int TLS_SEQ_NUM_LEN ;
 int crypto_cipher_deinit (int *) ;
 int * crypto_cipher_init (scalar_t__,int ,int ,int ) ;
 int os_memset (int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

int tlsv1_record_change_write_cipher(struct tlsv1_record_layer *rl)
{
 wpa_printf(MSG_DEBUG, "TLSv1: Record Layer - New write cipher suite "
     "0x%04x", rl->cipher_suite);
 rl->write_cipher_suite = rl->cipher_suite;
 os_memset(rl->write_seq_num, 0, TLS_SEQ_NUM_LEN);

 if (rl->write_cbc) {
  crypto_cipher_deinit(rl->write_cbc);
  rl->write_cbc = ((void*)0);

 }
 if (rl->cipher_alg != CRYPTO_CIPHER_NULL) {
  rl->write_cbc = crypto_cipher_init(rl->cipher_alg,
         rl->write_iv, rl->write_key,
         rl->key_material_len);

  if (rl->write_cbc == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to initialize "
       "cipher");
   return -1;
  }
 }

 return 0;
}

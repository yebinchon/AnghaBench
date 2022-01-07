
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_record_layer {scalar_t__ cipher_alg; int * read_cbc; int key_material_len; int read_key; int read_iv; int read_seq_num; int cipher_suite; int read_cipher_suite; } ;


 scalar_t__ CRYPTO_CIPHER_NULL ;
 int MSG_DEBUG ;
 int TLS_SEQ_NUM_LEN ;
 int crypto_cipher_deinit (int *) ;
 int * crypto_cipher_init (scalar_t__,int ,int ,int ) ;
 int os_memset (int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

int tlsv1_record_change_read_cipher(struct tlsv1_record_layer *rl)
{
 wpa_printf(MSG_DEBUG, "TLSv1: Record Layer - New read cipher suite "
     "0x%04x \n", rl->cipher_suite);
 rl->read_cipher_suite = rl->cipher_suite;
 os_memset(rl->read_seq_num, 0, TLS_SEQ_NUM_LEN);

 if (rl->read_cbc) {
  crypto_cipher_deinit(rl->read_cbc);
  rl->read_cbc = ((void*)0);
 }

 if (rl->cipher_alg != CRYPTO_CIPHER_NULL) {
  rl->read_cbc = crypto_cipher_init(rl->cipher_alg,
         rl->read_iv, rl->read_key,
         rl->key_material_len);
  if (rl->read_cbc == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "TLSv1: Failed to initialize "
       "cipher");
   return -1;
  }
 }

 return 0;
}

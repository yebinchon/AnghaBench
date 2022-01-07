
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8_t ;
struct tc_aes_key_sched_struct {int dummy; } ;


 int BT_DBG (char*,int ,...) ;
 int EINVAL ;
 scalar_t__ TC_CRYPTO_FAIL ;
 int bt_hex (int const*,int) ;
 int ecb_encrypt (int const*,int const*,int const*,int *) ;
 int sys_mem_swap (int const*,int) ;
 int sys_memcpy_swap (int const*,int const*,int) ;
 scalar_t__ tc_aes128_set_encrypt_key (struct tc_aes_key_sched_struct*,int const*) ;
 scalar_t__ tc_aes_encrypt (int const*,int const*,struct tc_aes_key_sched_struct*) ;

int bt_mesh_encrypt_le(const u8_t key[16], const u8_t plaintext[16],
                       u8_t enc_data[16])
{
    struct tc_aes_key_sched_struct s;
    u8_t tmp[16];

    BT_DBG("key %s plaintext %s", bt_hex(key, 16), bt_hex(plaintext, 16));

    sys_memcpy_swap(tmp, key, 16);

    if (tc_aes128_set_encrypt_key(&s, tmp) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    sys_memcpy_swap(tmp, plaintext, 16);

    if (tc_aes_encrypt(enc_data, tmp, &s) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    sys_mem_swap(enc_data, 16);

    BT_DBG("enc_data %s", bt_hex(enc_data, 16));

    return 0;

}

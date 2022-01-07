
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
 int ecb_encrypt_be (int const*,int const*,int const*) ;
 scalar_t__ tc_aes128_set_encrypt_key (struct tc_aes_key_sched_struct*,int const*) ;
 scalar_t__ tc_aes_encrypt (int const*,int const*,struct tc_aes_key_sched_struct*) ;

int bt_mesh_encrypt_be(const u8_t key[16], const u8_t plaintext[16],
                       u8_t enc_data[16])
{
    struct tc_aes_key_sched_struct s;

    BT_DBG("key %s plaintext %s", bt_hex(key, 16), bt_hex(plaintext, 16));

    if (tc_aes128_set_encrypt_key(&s, key) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    if (tc_aes_encrypt(enc_data, plaintext, &s) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    BT_DBG("enc_data %s", bt_hex(enc_data, 16));

    return 0;

}

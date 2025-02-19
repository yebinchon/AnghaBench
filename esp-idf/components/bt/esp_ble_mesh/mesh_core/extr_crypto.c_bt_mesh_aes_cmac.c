
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct tc_cmac_struct {int dummy; } ;
struct tc_aes_key_sched_struct {int dummy; } ;
struct bt_mesh_sg {int len; int data; } ;


 int EIO ;
 scalar_t__ TC_CRYPTO_FAIL ;
 scalar_t__ tc_cmac_final (int *,struct tc_cmac_struct*) ;
 scalar_t__ tc_cmac_setup (struct tc_cmac_struct*,int const*,struct tc_aes_key_sched_struct*) ;
 scalar_t__ tc_cmac_update (struct tc_cmac_struct*,int ,int ) ;

int bt_mesh_aes_cmac(const u8_t key[16], struct bt_mesh_sg *sg,
                     size_t sg_len, u8_t mac[16])
{
    struct tc_aes_key_sched_struct sched;
    struct tc_cmac_struct state;

    if (tc_cmac_setup(&state, key, &sched) == TC_CRYPTO_FAIL) {
        return -EIO;
    }

    for (; sg_len; sg_len--, sg++) {
        if (tc_cmac_update(&state, sg->data,
                           sg->len) == TC_CRYPTO_FAIL) {
            return -EIO;
        }
    }

    if (tc_cmac_final(mac, &state) == TC_CRYPTO_FAIL) {
        return -EIO;
    }

    return 0;
}

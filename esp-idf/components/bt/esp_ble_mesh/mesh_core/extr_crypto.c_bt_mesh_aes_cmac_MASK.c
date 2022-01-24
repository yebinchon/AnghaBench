#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
struct tc_cmac_struct {int dummy; } ;
struct tc_aes_key_sched_struct {int dummy; } ;
struct bt_mesh_sg {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ TC_CRYPTO_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct tc_cmac_struct*) ; 
 scalar_t__ FUNC1 (struct tc_cmac_struct*,int /*<<< orphan*/  const*,struct tc_aes_key_sched_struct*) ; 
 scalar_t__ FUNC2 (struct tc_cmac_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const u8_t key[16], struct bt_mesh_sg *sg,
                     size_t sg_len, u8_t mac[16])
{
    struct tc_aes_key_sched_struct sched;
    struct tc_cmac_struct state;

    if (FUNC1(&state, key, &sched) == TC_CRYPTO_FAIL) {
        return -EIO;
    }

    for (; sg_len; sg_len--, sg++) {
        if (FUNC2(&state, sg->data,
                           sg->len) == TC_CRYPTO_FAIL) {
            return -EIO;
        }
    }

    if (FUNC0(mac, &state) == TC_CRYPTO_FAIL) {
        return -EIO;
    }

    return 0;
}
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
typedef  int /*<<< orphan*/  const u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct net_buf_simple {int len; int /*<<< orphan*/  const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  const FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_buf_simple*,int /*<<< orphan*/  const) ; 

int FUNC7(const u8_t key[16], struct net_buf_simple *buf,
                        u32_t iv_index, bool proxy)
{
    u8_t mic_len = FUNC1(buf->data);
    u8_t nonce[13];
    int err;

    FUNC0("IVIndex %u EncKey %s mic_len %u", iv_index, FUNC2(key, 16),
           mic_len);
    FUNC0("PDU (len %u) %s", buf->len, FUNC2(buf->data, buf->len));

#if defined(CONFIG_BLE_MESH_PROXY)
    if (proxy) {
        create_proxy_nonce(nonce, buf->data, iv_index);
    } else {
        create_net_nonce(nonce, buf->data, iv_index);
    }
#else
    FUNC4(nonce, buf->data, iv_index);
#endif

    FUNC0("Nonce %s", FUNC2(nonce, 13));

    err = FUNC3(key, nonce, &buf->data[7], buf->len - 7,
                              NULL, 0, &buf->data[7], mic_len);
    if (!err) {
        FUNC6(buf, mic_len);
    }

    return err;
}
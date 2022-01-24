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
typedef  int const u8_t ;
typedef  int /*<<< orphan*/  u32_t ;
struct net_buf_simple {int const* data; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int const FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int) ; 
 int FUNC3 (int const*,int const*,int const*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int const*,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int const*,int const*,int /*<<< orphan*/ ) ; 

int FUNC6(const u8_t key[16], struct net_buf_simple *buf,
                        u32_t iv_index, bool proxy)
{
    u8_t mic_len = FUNC1(buf->data);
    u8_t nonce[13];

    FUNC0("PDU (%u bytes) %s", buf->len, FUNC2(buf->data, buf->len));
    FUNC0("iv_index %u, key %s mic_len %u", iv_index, FUNC2(key, 16),
           mic_len);

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

    buf->len -= mic_len;

    return FUNC3(key, nonce, &buf->data[7], buf->len - 7,
                               NULL, 0, &buf->data[7], mic_len);
}
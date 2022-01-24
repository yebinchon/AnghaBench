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
typedef  int /*<<< orphan*/  u16_t ;
struct net_buf_simple {int len; int /*<<< orphan*/  const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_buf_simple*,int) ; 

int FUNC6(const u8_t key[16], bool dev_key, u8_t aszmic,
                        struct net_buf_simple *buf, struct net_buf_simple *out,
                        const u8_t *ad, u16_t src, u16_t dst, u32_t seq_num,
                        u32_t iv_index)
{
    u8_t nonce[13];
    int err;

    FUNC1("EncData (len %u) %s", buf->len, FUNC2(buf->data, buf->len));

    FUNC4(nonce, dev_key, aszmic, src, dst, seq_num, iv_index);

    FUNC1("AppKey %s", FUNC2(key, 16));
    FUNC1("Nonce  %s", FUNC2(nonce, 13));

    err = FUNC3(key, nonce, buf->data, buf->len, ad,
                              ad ? 16 : 0, out->data, FUNC0(aszmic));
    if (!err) {
        FUNC5(out, buf->len);
    }

    return err;
}
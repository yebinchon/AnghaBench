#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {size_t pad_len; scalar_t__ write_buf; scalar_t__ aes_encrypt; scalar_t__ aes_decrypt; scalar_t__ hd; int /*<<< orphan*/  encrypt_iv; int /*<<< orphan*/ * pad; } ;
typedef  TYPE_2__ CryptoContext ;

/* Variables and functions */
 int BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    CryptoContext *c = h->priv_data;
    int ret = 0;

    if (c->aes_encrypt) {
        uint8_t out_buf[BLOCKSIZE];
        int pad = BLOCKSIZE - c->pad_len;

        FUNC4(&c->pad[c->pad_len], pad, pad);
        FUNC0(c->aes_encrypt, out_buf, c->pad, 1, c->encrypt_iv, 0);
        ret = FUNC3(c->hd, out_buf, BLOCKSIZE);
    }

    if (c->hd)
        FUNC2(c->hd);
    FUNC1(&c->aes_decrypt);
    FUNC1(&c->aes_encrypt);
    FUNC1(&c->write_buf);
    return ret;
}
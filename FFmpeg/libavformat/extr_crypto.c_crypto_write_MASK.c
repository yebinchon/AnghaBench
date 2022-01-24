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
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int pad_len; unsigned char const* pad; int /*<<< orphan*/ * write_buf; int /*<<< orphan*/  hd; int /*<<< orphan*/  encrypt_iv; int /*<<< orphan*/  aes_encrypt; int /*<<< orphan*/  write_buf_size; } ;
typedef  TYPE_2__ CryptoContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BLOCKSIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC5(URLContext *h, const unsigned char *buf, int size)
{
    CryptoContext *c = h->priv_data;
    int total_size, blocks, pad_len, out_size;
    int ret = 0;

    total_size = size + c->pad_len;
    pad_len = total_size % BLOCKSIZE;
    out_size = total_size - pad_len;
    blocks = out_size / BLOCKSIZE;

    if (out_size) {
        FUNC2(&c->write_buf, &c->write_buf_size, out_size);

        if (!c->write_buf)
            return FUNC0(ENOMEM);

        if (c->pad_len) {
            FUNC4(&c->pad[c->pad_len], buf, BLOCKSIZE - c->pad_len);
            FUNC1(c->aes_encrypt, c->write_buf, c->pad, 1, c->encrypt_iv, 0);
            blocks--;
        }

        FUNC1(c->aes_encrypt,
                     &c->write_buf[c->pad_len ? BLOCKSIZE : 0],
                     &buf[c->pad_len ? BLOCKSIZE - c->pad_len : 0],
                     blocks, c->encrypt_iv, 0);

        ret = FUNC3(c->hd, c->write_buf, out_size);
        if (ret < 0)
            return ret;

        FUNC4(c->pad, &buf[size - pad_len], pad_len);
    } else
        FUNC4(&c->pad[c->pad_len], buf, size);

    c->pad_len = pad_len;

    return size;
}
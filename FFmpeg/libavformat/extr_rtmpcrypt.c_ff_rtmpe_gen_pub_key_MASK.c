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
struct TYPE_5__ {int /*<<< orphan*/  dh; } ;
typedef  TYPE_2__ RTMPEContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 

int FUNC5(URLContext *h, uint8_t *buf)
{
    RTMPEContext *rt = h->priv_data;
    int offset, ret;

    if (!(rt->dh = FUNC2(1024)))
        return FUNC0(ENOMEM);

    offset = FUNC4(buf, 768, 632, 8);
    if (offset < 0)
        return offset;

    /* generate a Diffie-Hellmann public key */
    if ((ret = FUNC1(rt->dh)) < 0)
        return ret;

    /* write the public key into the handshake buffer */
    if ((ret = FUNC3(rt->dh, buf + offset, 128)) < 0)
        return ret;

    return 0;
}
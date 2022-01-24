#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ aes; } ;
struct TYPE_6__ {TYPE_4__ srtp_in; int /*<<< orphan*/  rtp_hd; } ;
typedef  TYPE_2__ SRTPProtoContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(URLContext *h, uint8_t *buf, int size)
{
    SRTPProtoContext *s = h->priv_data;
    int ret;
start:
    ret = FUNC1(s->rtp_hd, buf, size);
    if (ret > 0 && s->srtp_in.aes) {
        if (FUNC0(&s->srtp_in, buf, &ret) < 0)
            goto start;
    }
    return ret;
}
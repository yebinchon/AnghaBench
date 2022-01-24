#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct H263State {int quant; int gobn; int mba; int hmv1; int vmv1; int hmv2; int vmv2; } ;
struct H263Info {int src; int i; int u; int s; int a; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ buf; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s1, const struct H263Info *info,
                        const struct H263State *state, const uint8_t *buf,
                        int len, int sbits, int ebits, int m)
{
    RTPMuxContext *s = s1->priv_data;
    PutBitContext pb;

    FUNC2(&pb, s->buf, 64);
    FUNC4(&pb, 1, 1); /* F - 1, mode B */
    FUNC4(&pb, 1, 0); /* P - 0, mode B */
    FUNC4(&pb, 3, sbits); /* SBIT - 0 bits */
    FUNC4(&pb, 3, ebits); /* EBIT - 0 bits */
    FUNC4(&pb, 3, info->src); /* SRC - source format */
    FUNC4(&pb, 5, state->quant); /* QUANT - quantizer for the first MB */
    FUNC4(&pb, 5, state->gobn); /* GOBN - GOB number */
    FUNC4(&pb, 9, state->mba); /* MBA - MB address */
    FUNC4(&pb, 2, 0); /* R - reserved */
    FUNC4(&pb, 1, info->i); /* I - inter/intra */
    FUNC4(&pb, 1, info->u); /* U - unrestricted motion vector */
    FUNC4(&pb, 1, info->s); /* S - syntax-baesd arithmetic coding */
    FUNC4(&pb, 1, info->a); /* A - advanced prediction */
    FUNC4(&pb, 7, state->hmv1); /* HVM1 - horizontal motion vector 1 */
    FUNC4(&pb, 7, state->vmv1); /* VMV1 - vertical motion vector 1 */
    FUNC4(&pb, 7, state->hmv2); /* HVM2 - horizontal motion vector 2 */
    FUNC4(&pb, 7, state->vmv2); /* VMV2 - vertical motion vector 2 */
    FUNC1(&pb);
    FUNC3(s->buf + 8, buf, len);

    FUNC0(s1, s->buf, len + 8, m);
}
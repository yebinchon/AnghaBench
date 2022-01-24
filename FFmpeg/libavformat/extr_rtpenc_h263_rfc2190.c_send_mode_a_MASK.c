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
struct H263Info {int src; int i; int u; int s; int a; int tr; } ;
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
                        const uint8_t *buf, int len, int ebits, int m)
{
    RTPMuxContext *s = s1->priv_data;
    PutBitContext pb;

    FUNC2(&pb, s->buf, 32);
    FUNC4(&pb, 1, 0); /* F - 0, mode A */
    FUNC4(&pb, 1, 0); /* P - 0, normal I/P */
    FUNC4(&pb, 3, 0); /* SBIT - 0 bits */
    FUNC4(&pb, 3, ebits); /* EBIT */
    FUNC4(&pb, 3, info->src); /* SRC - source format */
    FUNC4(&pb, 1, info->i); /* I - inter/intra */
    FUNC4(&pb, 1, info->u); /* U - unrestricted motion vector */
    FUNC4(&pb, 1, info->s); /* S - syntax-baesd arithmetic coding */
    FUNC4(&pb, 1, info->a); /* A - advanced prediction */
    FUNC4(&pb, 4, 0); /* R - reserved */
    FUNC4(&pb, 2, 0); /* DBQ - 0 */
    FUNC4(&pb, 3, 0); /* TRB - 0 */
    FUNC4(&pb, 8, info->tr); /* TR */
    FUNC1(&pb);
    FUNC3(s->buf + 4, buf, len);

    FUNC0(s1, s->buf, len + 4, m);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  err_recognition; } ;
struct TYPE_8__ {TYPE_6__** sps_list; } ;
struct TYPE_7__ {TYPE_3__ ps; TYPE_4__* avctx; int /*<<< orphan*/  apply_defdispwin; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  is_nalff; int /*<<< orphan*/  sei; } ;
typedef  int /*<<< orphan*/  HEVCSPS ;
typedef  TYPE_1__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static int FUNC3(HEVCContext *s, uint8_t *buf, int length, int first)
{
    int ret, i;

    ret = FUNC2(buf, length, &s->ps, &s->sei, &s->is_nalff,
                                   &s->nal_length_size, s->avctx->err_recognition,
                                   s->apply_defdispwin, s->avctx);
    if (ret < 0)
        return ret;

    /* export stream parameters from the first SPS */
    for (i = 0; i < FUNC0(s->ps.sps_list); i++) {
        if (first && s->ps.sps_list[i]) {
            const HEVCSPS *sps = (const HEVCSPS*)s->ps.sps_list[i]->data;
            FUNC1(s, sps);
            break;
        }
    }

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int num_y; int num_x; int /*<<< orphan*/  pb; TYPE_3__* avctx; scalar_t__ prefix_bytes; TYPE_2__* slice_args; } ;
typedef  TYPE_1__ VC2EncContext ;
struct TYPE_8__ {int /*<<< orphan*/  (* execute ) (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int,int) ;} ;
struct TYPE_7__ {scalar_t__ bytes; int /*<<< orphan*/  pb; } ;
typedef  TYPE_2__ SliceArgs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encode_hq_slice ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(VC2EncContext *s)
{
    uint8_t *buf;
    int slice_x, slice_y, skip = 0;
    SliceArgs *enc_args = s->slice_args;

    FUNC0(&s->pb);
    FUNC1(&s->pb);
    buf = FUNC3(&s->pb);

    for (slice_y = 0; slice_y < s->num_y; slice_y++) {
        for (slice_x = 0; slice_x < s->num_x; slice_x++) {
            SliceArgs *args = &enc_args[s->num_x*slice_y + slice_x];
            FUNC2(&args->pb, buf + skip, args->bytes+s->prefix_bytes);
            skip += args->bytes;
        }
    }

    s->avctx->execute(s->avctx, encode_hq_slice, enc_args, NULL, s->num_x*s->num_y,
                      sizeof(SliceArgs));

    FUNC4(&s->pb, skip);

    return 0;
}
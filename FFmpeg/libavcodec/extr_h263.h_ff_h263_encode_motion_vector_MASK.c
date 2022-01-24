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
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__* avctx; } ;
struct TYPE_4__ {int flags2; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int AV_CODEC_FLAG2_NO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(MpegEncContext * s, int x, int y, int f_code){
    if (s->avctx->flags2 & AV_CODEC_FLAG2_NO_OUTPUT) {
        FUNC2(&s->pb,
            FUNC1(x, f_code)
           +FUNC1(y, f_code));
    }else{
        FUNC0(&s->pb, x, f_code);
        FUNC0(&s->pb, y, f_code);
    }
}
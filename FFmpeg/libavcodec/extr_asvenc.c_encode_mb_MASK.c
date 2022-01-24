#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_9__ {int buf_end; int buf; } ;
struct TYPE_8__ {TYPE_1__* avctx; TYPE_3__ pb; } ;
struct TYPE_7__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ ASV1Context ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_ASV1 ; 
 int MAX_MB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static inline int FUNC4(ASV1Context *a, int16_t block[6][64])
{
    int i;

    FUNC2(a->pb.buf_end - a->pb.buf - (FUNC3(&a->pb) >> 3) >= MAX_MB_SIZE);

    if (a->avctx->codec_id == AV_CODEC_ID_ASV1) {
        for (i = 0; i < 6; i++)
            FUNC0(a, block[i]);
    } else {
        for (i = 0; i < 6; i++) {
            FUNC1(a, block[i]);
        }
    }
    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int bitstream_size; void* bitstream; int /*<<< orphan*/  allocated_size; } ;
typedef  TYPE_2__ VTContext ;
struct TYPE_7__ {TYPE_1__* internal; } ;
struct TYPE_5__ {TYPE_2__* hwaccel_priv_data; } ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC2 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                                            const uint8_t *buffer,
                                            uint32_t size)
{
    VTContext *vtctx = avctx->internal->hwaccel_priv_data;
    void *tmp;

    tmp = FUNC2(vtctx->bitstream,
                          &vtctx->allocated_size,
                          vtctx->bitstream_size+size+4);
    if (!tmp)
        return FUNC0(ENOMEM);

    vtctx->bitstream = tmp;

    FUNC1(vtctx->bitstream + vtctx->bitstream_size, size);
    FUNC3(vtctx->bitstream + vtctx->bitstream_size + 4, buffer, size);

    vtctx->bitstream_size += size + 4;

    return 0;
}
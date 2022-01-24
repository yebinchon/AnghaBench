#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  bitstream_size; void* bitstream; int /*<<< orphan*/  allocated_size; } ;
typedef  TYPE_1__ VTContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(VTContext *vtctx,
                                    const uint8_t *buffer,
                                    uint32_t size)
{
    void *tmp;

    tmp = FUNC1(vtctx->bitstream,
                         &vtctx->allocated_size,
                         size);

    if (!tmp)
        return FUNC0(ENOMEM);

    vtctx->bitstream = tmp;
    FUNC2(vtctx->bitstream, buffer, size);
    vtctx->bitstream_size = size;

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {void* data; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* cuvidDestroyDecoder ) (scalar_t__) ;} ;
struct TYPE_7__ {TYPE_3__* cvdl; TYPE_5__* hw_device_ref; TYPE_1__* cudl; scalar_t__ decoder; int /*<<< orphan*/  cuda_ctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ NVDECDecoder ;
typedef  int /*<<< orphan*/  CUcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *opaque, uint8_t *data)
{
    NVDECDecoder *decoder = (NVDECDecoder*)data;

    if (decoder->decoder) {
        void *logctx = decoder->hw_device_ref->data;
        CUcontext dummy;
        FUNC0(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
        FUNC0(decoder->cvdl->cuvidDestroyDecoder(decoder->decoder));
        FUNC0(decoder->cudl->cuCtxPopCurrent(&dummy));
    }

    FUNC1(&decoder->hw_device_ref);

    FUNC3(&decoder->cvdl);

    FUNC2(&decoder);
}
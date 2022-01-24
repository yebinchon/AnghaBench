#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {TYPE_3__* cudl; int /*<<< orphan*/  decoder; TYPE_2__* cvdl; int /*<<< orphan*/  cuda_ctx; TYPE_1__* hw_device_ref; } ;
struct TYPE_11__ {TYPE_7__* decoder_ref; TYPE_7__* idx_ref; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  (* cuvidUnmapVideoFrame ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {void* data; } ;
typedef  TYPE_4__ NVDECFrame ;
typedef  TYPE_5__ NVDECDecoder ;
typedef  int /*<<< orphan*/  CUdeviceptr ;
typedef  int /*<<< orphan*/  CUcontext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *opaque, uint8_t *data)
{
    NVDECFrame *unmap_data = (NVDECFrame*)data;
    NVDECDecoder *decoder = (NVDECDecoder*)unmap_data->decoder_ref->data;
    void *logctx = decoder->hw_device_ref->data;
    CUdeviceptr devptr = (CUdeviceptr)opaque;
    int ret;
    CUcontext dummy;

    ret = FUNC0(decoder->cudl->cuCtxPushCurrent(decoder->cuda_ctx));
    if (ret < 0)
        goto finish;

    FUNC0(decoder->cvdl->cuvidUnmapVideoFrame(decoder->decoder, devptr));

    FUNC0(decoder->cudl->cuCtxPopCurrent(&dummy));

finish:
    FUNC1(&unmap_data->idx_ref);
    FUNC1(&unmap_data->decoder_ref);
    FUNC2(unmap_data);
}
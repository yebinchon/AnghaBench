#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {int (* nvEncGetEncodeGUIDCount ) (int /*<<< orphan*/ ,int*) ;int (* nvEncGetEncodeGUIDs ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  encodeGUID; } ;
struct TYPE_7__ {TYPE_4__ nvenc_funcs; } ;
struct TYPE_9__ {TYPE_2__ init_encode_params; int /*<<< orphan*/  nvencoder; TYPE_1__ nvenc_dload_funcs; } ;
typedef  TYPE_3__ NvencContext ;
typedef  TYPE_4__ NV_ENCODE_API_FUNCTION_LIST ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int NV_ENC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx)
{
    NvencContext *ctx                    = avctx->priv_data;
    NV_ENCODE_API_FUNCTION_LIST *p_nvenc = &ctx->nvenc_dload_funcs.nvenc_funcs;
    int i, ret, count = 0;
    GUID *guids = NULL;

    ret = p_nvenc->nvEncGetEncodeGUIDCount(ctx->nvencoder, &count);

    if (ret != NV_ENC_SUCCESS || !count)
        return FUNC0(ENOSYS);

    guids = FUNC2(count * sizeof(GUID));
    if (!guids)
        return FUNC0(ENOMEM);

    ret = p_nvenc->nvEncGetEncodeGUIDs(ctx->nvencoder, guids, count, &count);
    if (ret != NV_ENC_SUCCESS) {
        ret = FUNC0(ENOSYS);
        goto fail;
    }

    ret = FUNC0(ENOSYS);
    for (i = 0; i < count; i++) {
        if (!FUNC3(&guids[i], &ctx->init_encode_params.encodeGUID, sizeof(*guids))) {
            ret = 0;
            break;
        }
    }

fail:
    FUNC1(guids);

    return ret;
}
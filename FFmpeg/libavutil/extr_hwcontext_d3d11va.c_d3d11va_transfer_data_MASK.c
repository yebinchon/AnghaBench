#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {int /*<<< orphan*/  lock_ctx; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  device_context; int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {scalar_t__ format; int* linesize; int /*<<< orphan*/ ** data; TYPE_3__* hw_frames_ctx; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_18__ {scalar_t__ sw_format; TYPE_2__* internal; TYPE_1__* device_ctx; } ;
struct TYPE_17__ {scalar_t__ staging_texture; } ;
struct TYPE_16__ {int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {TYPE_4__* priv; } ;
struct TYPE_14__ {TYPE_7__* hwctx; } ;
typedef  int /*<<< orphan*/  ID3D11Texture2D ;
typedef  int /*<<< orphan*/  ID3D11Resource ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  D3D11_TEXTURE2D_DESC ;
typedef  int /*<<< orphan*/  D3D11_MAPPED_SUBRESOURCE ;
typedef  TYPE_4__ D3D11VAFramesContext ;
typedef  TYPE_5__ AVHWFramesContext ;
typedef  TYPE_6__ const AVFrame ;
typedef  TYPE_7__ AVD3D11VADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_D3D11 ; 
 int /*<<< orphan*/  D3D11_MAP_READ ; 
 int /*<<< orphan*/  D3D11_MAP_WRITE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/  const**,int*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,char*,long) ; 
 int FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVHWFramesContext *ctx, AVFrame *dst,
                                 const AVFrame *src)
{
    AVD3D11VADeviceContext *device_hwctx = ctx->device_ctx->hwctx;
    D3D11VAFramesContext              *s = ctx->internal->priv;
    int download = src->format == AV_PIX_FMT_D3D11;
    const AVFrame *frame = download ? src : dst;
    const AVFrame *other = download ? dst : src;
    // (The interface types are compatible.)
    ID3D11Resource *texture = (ID3D11Resource *)(ID3D11Texture2D *)frame->data[0];
    int index = (intptr_t)frame->data[1];
    ID3D11Resource *staging;
    int w = FUNC2(dst->width,  src->width);
    int h = FUNC2(dst->height, src->height);
    uint8_t *map_data[4];
    int map_linesize[4];
    D3D11_TEXTURE2D_DESC desc;
    D3D11_MAPPED_SUBRESOURCE map;
    HRESULT hr;

    if (frame->hw_frames_ctx->data != (uint8_t *)ctx || other->format != ctx->sw_format)
        return FUNC0(EINVAL);

    device_hwctx->lock(device_hwctx->lock_ctx);

    if (!s->staging_texture) {
        int res = FUNC9(ctx);
        if (res < 0)
            return res;
    }

    staging = (ID3D11Resource *)s->staging_texture;

    FUNC6(s->staging_texture, &desc);

    if (download) {
        FUNC3(device_hwctx->device_context,
                                                  staging, 0, 0, 0, 0,
                                                  texture, index, NULL);

        hr = FUNC4(device_hwctx->device_context,
                                     staging, 0, D3D11_MAP_READ, 0, &map);
        if (FUNC1(hr))
            goto map_failed;

        FUNC10(map_data, map_linesize, ctx, &desc, &map);

        FUNC7(dst->data, dst->linesize, (const uint8_t **)map_data, map_linesize,
                      ctx->sw_format, w, h);

        FUNC5(device_hwctx->device_context, staging, 0);
    } else {
        hr = FUNC4(device_hwctx->device_context,
                                     staging, 0, D3D11_MAP_WRITE, 0, &map);
        if (FUNC1(hr))
            goto map_failed;

        FUNC10(map_data, map_linesize, ctx, &desc, &map);

        FUNC7(map_data, map_linesize, (const uint8_t **)src->data, src->linesize,
                      ctx->sw_format, w, h);

        FUNC5(device_hwctx->device_context, staging, 0);

        FUNC3(device_hwctx->device_context,
                                                  texture, index, 0, 0, 0,
                                                  staging, 0, NULL);
    }

    device_hwctx->unlock(device_hwctx->lock_ctx);
    return 0;

map_failed:
    FUNC8(ctx, AV_LOG_ERROR, "Unable to lock D3D11VA surface (%lx)\n", (long)hr);
    device_hwctx->unlock(device_hwctx->lock_ctx);
    return AVERROR_UNKNOWN;
}
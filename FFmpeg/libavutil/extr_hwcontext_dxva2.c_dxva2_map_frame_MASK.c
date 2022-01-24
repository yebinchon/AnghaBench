#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_17__ {scalar_t__ format; int /*<<< orphan*/ ** data; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_16__ {scalar_t__ pBits; int /*<<< orphan*/  Pitch; } ;
struct TYPE_15__ {int /*<<< orphan*/  Height; } ;
struct TYPE_14__ {scalar_t__ palette_dummy; } ;
typedef  int /*<<< orphan*/  IDirect3DSurface9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DXVA2Mapping ;
typedef  TYPE_2__ D3DSURFACE_DESC ;
typedef  TYPE_3__ D3DLOCKED_RECT ;
typedef  int /*<<< orphan*/  AVHWFramesContext ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int AV_HWFRAME_MAP_OVERWRITE ; 
 int AV_HWFRAME_MAP_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int D3DLOCK_DISCARD ; 
 int D3DLOCK_READONLY ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  dxva2_unmap_frame ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__ const*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(AVHWFramesContext *ctx, AVFrame *dst, const AVFrame *src,
                           int flags)
{
    IDirect3DSurface9 *surface = (IDirect3DSurface9*)src->data[3];
    DXVA2Mapping      *map;
    D3DSURFACE_DESC    surfaceDesc;
    D3DLOCKED_RECT     LockedRect;
    HRESULT            hr;
    int i, err, nb_planes;
    int lock_flags = 0;

    nb_planes = FUNC9(dst->format);

    hr = FUNC2(surface, &surfaceDesc);
    if (FUNC1(hr)) {
        FUNC7(ctx, AV_LOG_ERROR, "Error getting a surface description\n");
        return AVERROR_UNKNOWN;
    }

    if (!(flags & AV_HWFRAME_MAP_WRITE))
        lock_flags |= D3DLOCK_READONLY;
    if (flags & AV_HWFRAME_MAP_OVERWRITE)
        lock_flags |= D3DLOCK_DISCARD;

    hr = FUNC3(surface, &LockedRect, NULL, lock_flags);
    if (FUNC1(hr)) {
        FUNC7(ctx, AV_LOG_ERROR, "Unable to lock DXVA2 surface\n");
        return AVERROR_UNKNOWN;
    }

    map = FUNC8(sizeof(*map));
    if (!map) {
        err = FUNC0(ENOMEM);
        goto fail;
    }

    err = FUNC10(src->hw_frames_ctx, dst, src,
                                dxva2_unmap_frame, map);
    if (err < 0) {
        FUNC5(&map);
        goto fail;
    }

    for (i = 0; i < nb_planes; i++)
        dst->linesize[i] = LockedRect.Pitch;

    FUNC6(dst->data, dst->format, surfaceDesc.Height,
                           (uint8_t*)LockedRect.pBits, dst->linesize);

    if (dst->format == AV_PIX_FMT_PAL8)
        dst->data[1] = (uint8_t*)map->palette_dummy;

    return 0;
fail:
    FUNC4(surface);
    return err;
}
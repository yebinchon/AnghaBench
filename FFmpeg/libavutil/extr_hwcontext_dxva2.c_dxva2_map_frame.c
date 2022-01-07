
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_17__ {scalar_t__ format; int ** data; int * linesize; int hw_frames_ctx; } ;
struct TYPE_16__ {scalar_t__ pBits; int Pitch; } ;
struct TYPE_15__ {int Height; } ;
struct TYPE_14__ {scalar_t__ palette_dummy; } ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;
typedef TYPE_1__ DXVA2Mapping ;
typedef TYPE_2__ D3DSURFACE_DESC ;
typedef TYPE_3__ D3DLOCKED_RECT ;
typedef int AVHWFramesContext ;
typedef TYPE_4__ AVFrame ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_HWFRAME_MAP_OVERWRITE ;
 int AV_HWFRAME_MAP_WRITE ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 int D3DLOCK_DISCARD ;
 int D3DLOCK_READONLY ;
 int ENOMEM ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DSurface9_GetDesc (int *,TYPE_2__*) ;
 int IDirect3DSurface9_LockRect (int *,TYPE_3__*,int *,int) ;
 int IDirect3DSurface9_UnlockRect (int *) ;
 int av_freep (TYPE_1__**) ;
 int av_image_fill_pointers (int **,scalar_t__,int ,int *,int *) ;
 int av_log (int *,int ,char*) ;
 TYPE_1__* av_mallocz (int) ;
 int av_pix_fmt_count_planes (scalar_t__) ;
 int dxva2_unmap_frame ;
 int ff_hwframe_map_create (int ,TYPE_4__*,TYPE_4__ const*,int ,TYPE_1__*) ;

__attribute__((used)) static int dxva2_map_frame(AVHWFramesContext *ctx, AVFrame *dst, const AVFrame *src,
                           int flags)
{
    IDirect3DSurface9 *surface = (IDirect3DSurface9*)src->data[3];
    DXVA2Mapping *map;
    D3DSURFACE_DESC surfaceDesc;
    D3DLOCKED_RECT LockedRect;
    HRESULT hr;
    int i, err, nb_planes;
    int lock_flags = 0;

    nb_planes = av_pix_fmt_count_planes(dst->format);

    hr = IDirect3DSurface9_GetDesc(surface, &surfaceDesc);
    if (FAILED(hr)) {
        av_log(ctx, AV_LOG_ERROR, "Error getting a surface description\n");
        return AVERROR_UNKNOWN;
    }

    if (!(flags & AV_HWFRAME_MAP_WRITE))
        lock_flags |= D3DLOCK_READONLY;
    if (flags & AV_HWFRAME_MAP_OVERWRITE)
        lock_flags |= D3DLOCK_DISCARD;

    hr = IDirect3DSurface9_LockRect(surface, &LockedRect, ((void*)0), lock_flags);
    if (FAILED(hr)) {
        av_log(ctx, AV_LOG_ERROR, "Unable to lock DXVA2 surface\n");
        return AVERROR_UNKNOWN;
    }

    map = av_mallocz(sizeof(*map));
    if (!map) {
        err = AVERROR(ENOMEM);
        goto fail;
    }

    err = ff_hwframe_map_create(src->hw_frames_ctx, dst, src,
                                dxva2_unmap_frame, map);
    if (err < 0) {
        av_freep(&map);
        goto fail;
    }

    for (i = 0; i < nb_planes; i++)
        dst->linesize[i] = LockedRect.Pitch;

    av_image_fill_pointers(dst->data, dst->format, surfaceDesc.Height,
                           (uint8_t*)LockedRect.pBits, dst->linesize);

    if (dst->format == AV_PIX_FMT_PAL8)
        dst->data[1] = (uint8_t*)map->palette_dummy;

    return 0;
fail:
    IDirect3DSurface9_UnlockRect(surface);
    return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VdpGetProcAddress ;
typedef int VdpDevice ;
struct TYPE_7__ {int decoder; } ;
struct TYPE_8__ {unsigned int flags; int reset; int * get_proc_address; int device; TYPE_1__ context; } ;
typedef TYPE_2__ VDPAUHWContext ;
struct TYPE_9__ {TYPE_2__* hwaccel_context; } ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 unsigned int AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH ;
 unsigned int AV_HWACCEL_FLAG_IGNORE_LEVEL ;
 int EINVAL ;
 int ENOMEM ;
 int VDP_INVALID_HANDLE ;
 scalar_t__ av_reallocp (TYPE_2__**,int) ;
 int memset (TYPE_2__*,int ,int) ;

int av_vdpau_bind_context(AVCodecContext *avctx, VdpDevice device,
                          VdpGetProcAddress *get_proc, unsigned flags)
{
    VDPAUHWContext *hwctx;

    if (flags & ~(AV_HWACCEL_FLAG_IGNORE_LEVEL|AV_HWACCEL_FLAG_ALLOW_HIGH_DEPTH))
        return AVERROR(EINVAL);

    if (av_reallocp(&avctx->hwaccel_context, sizeof(*hwctx)))
        return AVERROR(ENOMEM);

    hwctx = avctx->hwaccel_context;

    memset(hwctx, 0, sizeof(*hwctx));
    hwctx->context.decoder = VDP_INVALID_HANDLE;
    hwctx->device = device;
    hwctx->get_proc_address = get_proc;
    hwctx->flags = flags;
    hwctx->reset = 1;
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VADisplay ;
struct TYPE_9__ {int drm_fd; } ;
typedef TYPE_1__ VAAPIDevicePriv ;
struct TYPE_11__ {scalar_t__ fd; } ;
struct TYPE_10__ {scalar_t__ type; int * free; TYPE_1__* user_opaque; TYPE_3__* hwctx; } ;
typedef TYPE_2__ AVHWDeviceContext ;
typedef TYPE_3__ AVDRMDeviceContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_HWDEVICE_TYPE_DRM ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_1__* av_mallocz (int) ;
 int * vaGetDisplayDRM (scalar_t__) ;
 int vaapi_device_connect (TYPE_2__*,int *) ;
 int vaapi_device_free ;

__attribute__((used)) static int vaapi_device_derive(AVHWDeviceContext *ctx,
                               AVHWDeviceContext *src_ctx, int flags)
{
    return AVERROR(ENOSYS);
}

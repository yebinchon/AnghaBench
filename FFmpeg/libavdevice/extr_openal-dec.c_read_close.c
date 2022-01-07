
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ device; } ;
typedef TYPE_1__ al_data ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int alcCaptureCloseDevice (scalar_t__) ;
 int alcCaptureStop (scalar_t__) ;

__attribute__((used)) static int read_close(AVFormatContext* ctx)
{
    al_data *ad = ctx->priv_data;

    if (ad->device) {
        alcCaptureStop(ad->device);
        alcCaptureCloseDevice(ad->device);
    }
    return 0;
}

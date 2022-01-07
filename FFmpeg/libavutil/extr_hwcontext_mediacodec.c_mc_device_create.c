
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVHWDeviceContext ;
typedef int AVDictionary ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static int mc_device_create(AVHWDeviceContext *ctx, const char *device,
                            AVDictionary *opts, int flags)
{
    if (device && device[0]) {
        av_log(ctx, AV_LOG_ERROR, "Device selection unsupported.\n");
        return AVERROR_UNKNOWN;
    }

    return 0;
}

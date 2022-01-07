
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_msg ;
typedef int AVFilterContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int,char*) ;
 int zimg_get_last_error (char*,int) ;

__attribute__((used)) static int print_zimg_error(AVFilterContext *ctx)
{
    char err_msg[1024];
    int err_code = zimg_get_last_error(err_msg, sizeof(err_msg));

    av_log(ctx, AV_LOG_ERROR, "code %d: %s\n", err_code, err_msg);

    return AVERROR_EXTERNAL;
}

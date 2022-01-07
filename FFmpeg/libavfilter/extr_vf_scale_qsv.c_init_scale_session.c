
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;


 int init_out_pool (int *,int,int) ;
 int init_out_session (int *) ;
 int qsvscale_uninit (int *) ;

__attribute__((used)) static int init_scale_session(AVFilterContext *ctx, int in_width, int in_height,
                              int out_width, int out_height)
{
    int ret;

    qsvscale_uninit(ctx);

    ret = init_out_pool(ctx, out_width, out_height);
    if (ret < 0)
        return ret;

    ret = init_out_session(ctx);
    if (ret < 0)
        return ret;

    return 0;
}

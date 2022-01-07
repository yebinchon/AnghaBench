
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; } ;
typedef int AVHWFramesContext ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;

 int ENOSYS ;
 int vaapi_map_from_drm (int *,TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static int vaapi_map_to(AVHWFramesContext *hwfc, AVFrame *dst,
                        const AVFrame *src, int flags)
{
    switch (src->format) {




    default:
        return AVERROR(ENOSYS);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int format; } ;
typedef int AVHWFramesContext ;
typedef TYPE_1__ AVFrame ;



 int vaapi_map_to_drm (int *,TYPE_1__*,TYPE_1__ const*,int) ;
 int vaapi_map_to_memory (int *,TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static int vaapi_map_from(AVHWFramesContext *hwfc, AVFrame *dst,
                          const AVFrame *src, int flags)
{
    switch (dst->format) {




    default:
        return vaapi_map_to_memory(hwfc, dst, src, flags);
    }
}

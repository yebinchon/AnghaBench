
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pict_type; } ;
typedef int * CFDictionaryRef ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 scalar_t__ AV_PICTURE_TYPE_I ;
 int * CFDictionaryCreate (int *,void const**,void const**,int,int *,int *) ;
 int ENOMEM ;
 void const* kCFBooleanTrue ;
 void const* kVTEncodeFrameOptionKey_ForceKeyFrame ;

__attribute__((used)) static int create_encoder_dict_h264(const AVFrame *frame,
                                    CFDictionaryRef* dict_out)
{
    CFDictionaryRef dict = ((void*)0);
    if (frame->pict_type == AV_PICTURE_TYPE_I) {
        const void *keys[] = { kVTEncodeFrameOptionKey_ForceKeyFrame };
        const void *vals[] = { kCFBooleanTrue };

        dict = CFDictionaryCreate(((void*)0), keys, vals, 1, ((void*)0), ((void*)0));
        if(!dict) return AVERROR(ENOMEM);
    }

    *dict_out = dict;
    return 0;
}

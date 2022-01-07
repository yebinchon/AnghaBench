
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * DPB; } ;
typedef TYPE_1__ HEVCContext ;


 int FF_ARRAY_ELEMS (int *) ;
 int HEVC_FRAME_FLAG_LONG_REF ;
 int HEVC_FRAME_FLAG_SHORT_REF ;
 int ff_hevc_unref_frame (TYPE_1__*,int *,int) ;

void ff_hevc_clear_refs(HEVCContext *s)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(s->DPB); i++)
        ff_hevc_unref_frame(s, &s->DPB[i],
                            HEVC_FRAME_FLAG_SHORT_REF |
                            HEVC_FRAME_FLAG_LONG_REF);
}

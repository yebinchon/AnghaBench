
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tmp_frame; } ;
typedef TYPE_1__ VTContext ;
struct TYPE_9__ {TYPE_2__* opaque; } ;
struct TYPE_8__ {TYPE_1__* hwaccel_ctx; int * hwaccel_retrieve_data; int * hwaccel_uninit; } ;
typedef TYPE_2__ InputStream ;
typedef TYPE_3__ AVCodecContext ;


 int av_frame_free (int *) ;
 int av_freep (TYPE_1__**) ;
 int av_videotoolbox_default_free (TYPE_3__*) ;

__attribute__((used)) static void videotoolbox_uninit(AVCodecContext *s)
{
    InputStream *ist = s->opaque;
    VTContext *vt = ist->hwaccel_ctx;

    ist->hwaccel_uninit = ((void*)0);
    ist->hwaccel_retrieve_data = ((void*)0);

    av_frame_free(&vt->tmp_frame);

    av_videotoolbox_default_free(s);
    av_freep(&ist->hwaccel_ctx);
}

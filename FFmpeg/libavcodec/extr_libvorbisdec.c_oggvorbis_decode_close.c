
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int vc; int vi; int vd; int vb; } ;
typedef TYPE_1__ OggVorbisDecContext ;
typedef TYPE_2__ AVCodecContext ;


 int vorbis_block_clear (int *) ;
 int vorbis_comment_clear (int *) ;
 int vorbis_dsp_clear (int *) ;
 int vorbis_info_clear (int *) ;

__attribute__((used)) static int oggvorbis_decode_close(AVCodecContext *avccontext) {
    OggVorbisDecContext *context = avccontext->priv_data ;

    vorbis_block_clear(&context->vb);
    vorbis_dsp_clear(&context->vd);
    vorbis_info_clear(&context->vi) ;
    vorbis_comment_clear(&context->vc) ;

    return 0 ;
}

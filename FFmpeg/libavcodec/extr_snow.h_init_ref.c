
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int stride; int uvstride; int *** ref; int *** src; TYPE_1__* avctx; } ;
struct TYPE_6__ {int chroma_h_shift; } ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_2__ SnowContext ;
typedef TYPE_3__ MotionEstContext ;


 int av_assert2 (int) ;

__attribute__((used)) static inline void init_ref(MotionEstContext *c, uint8_t *src[3], uint8_t *ref[3], uint8_t *ref2[3], int x, int y, int ref_index){
    SnowContext *s = c->avctx->priv_data;
    const int offset[3]= {
          y*c-> stride + x,
        ((y*c->uvstride + x)>>s->chroma_h_shift),
        ((y*c->uvstride + x)>>s->chroma_h_shift),
    };
    int i;
    for(i=0; i<3; i++){
        c->src[0][i]= src [i];
        c->ref[0][i]= ref [i] + offset[i];
    }
    av_assert2(!ref_index);
}

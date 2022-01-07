
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; scalar_t__** src; scalar_t__** ref; } ;
struct TYPE_4__ {scalar_t__ uvlinesize; scalar_t__ linesize; TYPE_2__ me; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ MotionEstContext ;


 int FLAG_CHROMA ;

__attribute__((used)) static inline void init_interlaced_ref(MpegEncContext *s, int ref_index){
    MotionEstContext * const c= &s->me;

    c->ref[1+ref_index][0] = c->ref[0+ref_index][0] + s->linesize;
    c->src[1][0] = c->src[0][0] + s->linesize;
    if(c->flags & FLAG_CHROMA){
        c->ref[1+ref_index][1] = c->ref[0+ref_index][1] + s->uvlinesize;
        c->ref[1+ref_index][2] = c->ref[0+ref_index][2] + s->uvlinesize;
        c->src[1][1] = c->src[0][1] + s->uvlinesize;
        c->src[1][2] = c->src[0][2] + s->uvlinesize;
    }
}

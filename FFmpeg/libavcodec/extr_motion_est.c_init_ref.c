
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int stride; int uvstride; int *** ref; int *** src; } ;
typedef TYPE_1__ MotionEstContext ;



__attribute__((used)) static inline void init_ref(MotionEstContext *c, uint8_t *src[3], uint8_t *ref[3], uint8_t *ref2[3], int x, int y, int ref_index){
    const int offset[3]= {
          y*c-> stride + x,
        ((y*c->uvstride + x)>>1),
        ((y*c->uvstride + x)>>1),
    };
    int i;
    for(i=0; i<3; i++){
        c->src[0][i]= src [i] + offset[i];
        c->ref[0][i]= ref [i] + offset[i];
    }
    if(ref_index){
        for(i=0; i<3; i++){
            c->ref[ref_index][i]= ref2[i] + offset[i];
        }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stride; scalar_t__** src; scalar_t__** ref; } ;
typedef TYPE_1__ MotionEstContext ;



__attribute__((used)) static inline void init_mv4_ref(MotionEstContext *c){
    const int stride= c->stride;

    c->ref[1][0] = c->ref[0][0] + 8;
    c->ref[2][0] = c->ref[0][0] + 8*stride;
    c->ref[3][0] = c->ref[2][0] + 8;
    c->src[1][0] = c->src[0][0] + 8;
    c->src[2][0] = c->src[0][0] + 8*stride;
    c->src[3][0] = c->src[2][0] + 8;
}

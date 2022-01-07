
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVBitStreamFilter ;


 int const* av_bsf_iterate (void**) ;

const AVBitStreamFilter *av_bsf_next(void **opaque) {
    return av_bsf_iterate(opaque);
}

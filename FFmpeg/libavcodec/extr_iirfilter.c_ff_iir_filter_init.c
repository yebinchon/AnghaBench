
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_flt; } ;
typedef TYPE_1__ FFIIRFilterContext ;


 scalar_t__ HAVE_MIPSFPU ;
 int ff_iir_filter_flt ;
 int ff_iir_filter_init_mips (TYPE_1__*) ;

void ff_iir_filter_init(FFIIRFilterContext *f) {
    f->filter_flt = ff_iir_filter_flt;

    if (HAVE_MIPSFPU)
        ff_iir_filter_init_mips(f);
}

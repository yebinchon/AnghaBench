
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; } ;
struct TYPE_5__ {TYPE_1__ tf; } ;
typedef TYPE_2__ VP8Frame ;


 unsigned char ff_nvdec_get_ref_idx (int ) ;

__attribute__((used)) static unsigned char safe_get_ref_idx(VP8Frame *frame)
{
    return frame ? ff_nvdec_get_ref_idx(frame->tf.f) : 255;
}

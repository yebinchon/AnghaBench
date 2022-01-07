
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int reference; } ;
struct TYPE_8__ {int pic_id; } ;
typedef TYPE_1__ H264Ref ;
typedef TYPE_2__ H264Picture ;


 int PICT_FRAME ;
 int pic_as_field (TYPE_1__*,int) ;
 int ref_from_h264pic (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int split_field_copy(H264Ref *dest, H264Picture *src, int parity, int id_add)
{
    int match = !!(src->reference & parity);

    if (match) {
        ref_from_h264pic(dest, src);
        if (parity != PICT_FRAME) {
            pic_as_field(dest, parity);
            dest->pic_id *= 2;
            dest->pic_id += id_add;
        }
    }

    return match;
}

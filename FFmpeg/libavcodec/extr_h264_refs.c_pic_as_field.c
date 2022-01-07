
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* data; int* linesize; int reference; TYPE_1__* parent; int poc; } ;
struct TYPE_4__ {int * field_poc; } ;
typedef TYPE_2__ H264Ref ;


 int FF_ARRAY_ELEMS (int*) ;
 int const PICT_BOTTOM_FIELD ;

__attribute__((used)) static void pic_as_field(H264Ref *pic, const int parity)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(pic->data); ++i) {
        if (parity == PICT_BOTTOM_FIELD)
            pic->data[i] += pic->linesize[i];
        pic->reference = parity;
        pic->linesize[i] *= 2;
    }
    pic->poc = pic->parent->field_poc[parity == PICT_BOTTOM_FIELD];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int* linesize; TYPE_2__* parent; int poc; int reference; int * data; } ;
struct TYPE_8__ {int list_count; int* ref_count; TYPE_4__** ref_list; } ;
struct TYPE_7__ {int * field_poc; TYPE_1__* f; } ;
struct TYPE_6__ {scalar_t__* linesize; } ;
typedef TYPE_3__ H264SliceContext ;
typedef TYPE_4__ H264Ref ;


 int PICT_BOTTOM_FIELD ;
 int PICT_TOP_FIELD ;

__attribute__((used)) static void h264_fill_mbaff_ref_list(H264SliceContext *sl)
{
    int list, i, j;
    for (list = 0; list < sl->list_count; list++) {
        for (i = 0; i < sl->ref_count[list]; i++) {
            H264Ref *frame = &sl->ref_list[list][i];
            H264Ref *field = &sl->ref_list[list][16 + 2 * i];

            field[0] = *frame;

            for (j = 0; j < 3; j++)
                field[0].linesize[j] <<= 1;
            field[0].reference = PICT_TOP_FIELD;
            field[0].poc = field[0].parent->field_poc[0];

            field[1] = field[0];

            for (j = 0; j < 3; j++)
                field[1].data[j] += frame->parent->f->linesize[j];
            field[1].reference = PICT_BOTTOM_FIELD;
            field[1].poc = field[1].parent->field_poc[1];
        }
    }
}

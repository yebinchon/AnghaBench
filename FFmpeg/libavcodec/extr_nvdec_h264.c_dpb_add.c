
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int PicIdx; int FrameIdx; int used_for_reference; int * FieldOrderCnt; scalar_t__ not_existing; int is_long_term; } ;
struct TYPE_13__ {TYPE_3__* hwaccel_priv; } ;
struct TYPE_12__ {int reference; int * field_poc; int long_ref; TYPE_2__* f; } ;
struct TYPE_11__ {int idx; } ;
struct TYPE_10__ {TYPE_1__* private_ref; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_3__ NVDECFrame ;
typedef TYPE_4__ H264Picture ;
typedef int H264Context ;
typedef TYPE_5__ FrameDecodeData ;
typedef TYPE_6__ CUVIDH264DPBENTRY ;



__attribute__((used)) static void dpb_add(const H264Context *h, CUVIDH264DPBENTRY *dst, const H264Picture *src,
                    int frame_idx)
{
    FrameDecodeData *fdd = (FrameDecodeData*)src->f->private_ref->data;
    const NVDECFrame *cf = fdd->hwaccel_priv;

    dst->PicIdx = cf ? cf->idx : -1;
    dst->FrameIdx = frame_idx;
    dst->is_long_term = src->long_ref;
    dst->not_existing = 0;
    dst->used_for_reference = src->reference & 3;
    dst->FieldOrderCnt[0] = src->field_poc[0];
    dst->FieldOrderCnt[1] = src->field_poc[1];
}

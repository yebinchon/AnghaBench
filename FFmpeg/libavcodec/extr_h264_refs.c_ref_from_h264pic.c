
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pic_id; int poc; int reference; TYPE_1__* f; } ;
struct TYPE_7__ {TYPE_3__* parent; int pic_id; int poc; int reference; int linesize; int data; } ;
struct TYPE_6__ {int linesize; int data; } ;
typedef TYPE_2__ H264Ref ;
typedef TYPE_3__ H264Picture ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void ref_from_h264pic(H264Ref *dst, H264Picture *src)
{
    memcpy(dst->data, src->f->data, sizeof(dst->data));
    memcpy(dst->linesize, src->f->linesize, sizeof(dst->linesize));
    dst->reference = src->reference;
    dst->poc = src->poc;
    dst->pic_id = src->pic_id;
    dst->parent = src;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum AVFrameSideDataType { ____Placeholder_AVFrameSideDataType } AVFrameSideDataType ;
struct TYPE_12__ {int size; int data; } ;
struct TYPE_11__ {int nb_side_data; TYPE_1__** side_data; } ;
struct TYPE_10__ {int type; int size; TYPE_3__* buf; int data; } ;
typedef TYPE_1__ AVFrameSideData ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVBufferRef ;


 int INT_MAX ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_1__** av_realloc (TYPE_1__**,int) ;

AVFrameSideData *av_frame_new_side_data_from_buf(AVFrame *frame,
                                                 enum AVFrameSideDataType type,
                                                 AVBufferRef *buf)
{
    AVFrameSideData *ret, **tmp;

    if (!buf)
        return ((void*)0);

    if (frame->nb_side_data > INT_MAX / sizeof(*frame->side_data) - 1)
        return ((void*)0);

    tmp = av_realloc(frame->side_data,
                     (frame->nb_side_data + 1) * sizeof(*frame->side_data));
    if (!tmp)
        return ((void*)0);
    frame->side_data = tmp;

    ret = av_mallocz(sizeof(*ret));
    if (!ret)
        return ((void*)0);

    ret->buf = buf;
    ret->data = ret->buf->data;
    ret->size = buf->size;
    ret->type = type;

    frame->side_data[frame->nb_side_data++] = ret;

    return ret;
}

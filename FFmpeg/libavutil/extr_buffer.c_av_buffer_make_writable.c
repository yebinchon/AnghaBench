
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int data; } ;
typedef TYPE_1__ AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_1__* av_buffer_alloc (int ) ;
 scalar_t__ av_buffer_is_writable (TYPE_1__*) ;
 int buffer_replace (TYPE_1__**,TYPE_1__**) ;
 int memcpy (int ,int ,int ) ;

int av_buffer_make_writable(AVBufferRef **pbuf)
{
    AVBufferRef *newbuf, *buf = *pbuf;

    if (av_buffer_is_writable(buf))
        return 0;

    newbuf = av_buffer_alloc(buf->size);
    if (!newbuf)
        return AVERROR(ENOMEM);

    memcpy(newbuf->data, buf->data, buf->size);

    buffer_replace(pbuf, &newbuf);

    return 0;
}

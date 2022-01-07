
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf_pb; } ;
typedef TYPE_1__ FFTextReader ;


 int ff_text_init_avio (int *,TYPE_1__*,int *) ;
 int ffio_init_context (int *,void*,size_t,int ,int *,int *,int *,int *) ;
 int memset (int *,int ,int) ;

void ff_text_init_buf(FFTextReader *r, void *buf, size_t size)
{
    memset(&r->buf_pb, 0, sizeof(r->buf_pb));
    ffio_init_context(&r->buf_pb, buf, size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    ff_text_init_avio(((void*)0), r, &r->buf_pb);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long checksum; unsigned long (* update_checksum ) (unsigned long,scalar_t__,scalar_t__) ;scalar_t__ checksum_ptr; scalar_t__ buf_ptr; } ;
typedef TYPE_1__ AVIOContext ;


 unsigned long stub1 (unsigned long,scalar_t__,scalar_t__) ;

unsigned long ffio_get_checksum(AVIOContext *s)
{
    s->checksum = s->update_checksum(s->checksum, s->checksum_ptr,
                                     s->buf_ptr - s->checksum_ptr);
    s->update_checksum = ((void*)0);
    return s->checksum;
}

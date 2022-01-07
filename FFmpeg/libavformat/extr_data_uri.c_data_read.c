
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {scalar_t__ pos; scalar_t__ size; scalar_t__ data; } ;
typedef TYPE_2__ DataContext ;


 int AVERROR_EOF ;
 int FFMIN (int,scalar_t__) ;
 int memcpy (unsigned char*,scalar_t__,int) ;

__attribute__((used)) static int data_read(URLContext *h, unsigned char *buf, int size)
{
    DataContext *dc = h->priv_data;

    if (dc->pos >= dc->size)
        return AVERROR_EOF;
    size = FFMIN(size, dc->size - dc->pos);
    memcpy(buf, dc->data + dc->pos, size);
    dc->pos += size;
    return size;
}

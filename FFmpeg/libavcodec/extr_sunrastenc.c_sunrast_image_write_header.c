
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int maplength; int p; int maptype; int type; int length; int depth; } ;
typedef TYPE_1__ SUNRASTContext ;
typedef TYPE_2__ AVCodecContext ;


 int RAS_MAGIC ;
 int bytestream2_put_be32u (int *,int ) ;

__attribute__((used)) static void sunrast_image_write_header(AVCodecContext *avctx)
{
    SUNRASTContext *s = avctx->priv_data;

    bytestream2_put_be32u(&s->p, RAS_MAGIC);
    bytestream2_put_be32u(&s->p, avctx->width);
    bytestream2_put_be32u(&s->p, avctx->height);
    bytestream2_put_be32u(&s->p, s->depth);
    bytestream2_put_be32u(&s->p, s->length);
    bytestream2_put_be32u(&s->p, s->type);
    bytestream2_put_be32u(&s->p, s->maptype);
    bytestream2_put_be32u(&s->p, s->maplength);
}

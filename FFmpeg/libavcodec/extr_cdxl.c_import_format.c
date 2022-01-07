
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int format; TYPE_1__* avctx; } ;
struct TYPE_7__ {int height; } ;
typedef TYPE_2__ CDXLVideoContext ;





 int bitline2chunky (TYPE_2__*,int,int *) ;
 int bitplanar2chunky (TYPE_2__*,int,int *) ;
 int chunky2chunky (TYPE_2__*,int,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void import_format(CDXLVideoContext *c, int linesize, uint8_t *out)
{
    memset(out, 0, linesize * c->avctx->height);

    switch (c->format) {
    case 129:
        bitplanar2chunky(c, linesize, out);
        break;
    case 130:
        bitline2chunky(c, linesize, out);
        break;
    case 128:
        chunky2chunky(c, linesize, out);
        break;
    }
}

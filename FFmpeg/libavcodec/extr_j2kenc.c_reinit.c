
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numXtiles; int numYtiles; int ncomponents; int codsty; TYPE_1__* tile; } ;
struct TYPE_4__ {scalar_t__ comp; } ;
typedef TYPE_1__ Jpeg2000Tile ;
typedef TYPE_2__ Jpeg2000EncoderContext ;


 int ff_jpeg2000_reinit (scalar_t__,int *) ;

__attribute__((used)) static void reinit(Jpeg2000EncoderContext *s)
{
    int tileno, compno;
    for (tileno = 0; tileno < s->numXtiles * s->numYtiles; tileno++){
        Jpeg2000Tile *tile = s->tile + tileno;
        for (compno = 0; compno < s->ncomponents; compno++)
            ff_jpeg2000_reinit(tile->comp + compno, &s->codsty);
    }
}

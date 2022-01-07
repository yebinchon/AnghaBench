
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* comp; } ;
struct TYPE_6__ {int numXtiles; int numYtiles; int ncomponents; TYPE_2__* tile; int codsty; } ;
typedef TYPE_1__ Jpeg2000EncoderContext ;
typedef TYPE_2__ Jpeg2000Component ;
typedef int Jpeg2000CodingStyle ;


 int av_freep (TYPE_2__**) ;
 int ff_jpeg2000_cleanup (TYPE_2__*,int *) ;

__attribute__((used)) static void cleanup(Jpeg2000EncoderContext *s)
{
    int tileno, compno;
    Jpeg2000CodingStyle *codsty = &s->codsty;

    for (tileno = 0; tileno < s->numXtiles * s->numYtiles; tileno++){
        for (compno = 0; compno < s->ncomponents; compno++){
            Jpeg2000Component *comp = s->tile[tileno].comp + compno;
            ff_jpeg2000_cleanup(comp, codsty);
        }
        av_freep(&s->tile[tileno].comp);
    }
    av_freep(&s->tile);
}

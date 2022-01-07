
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* comp; int * codsty; } ;
struct TYPE_6__ {int numXtiles; int numYtiles; int ncomponents; int poc; int * properties; int * qntsty; int * codsty; TYPE_2__* tile; } ;
typedef TYPE_1__ Jpeg2000DecoderContext ;
typedef TYPE_2__ Jpeg2000Component ;
typedef int Jpeg2000CodingStyle ;


 int av_freep (TYPE_2__**) ;
 int ff_jpeg2000_cleanup (TYPE_2__*,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void jpeg2000_dec_cleanup(Jpeg2000DecoderContext *s)
{
    int tileno, compno;
    for (tileno = 0; tileno < s->numXtiles * s->numYtiles; tileno++) {
        if (s->tile[tileno].comp) {
            for (compno = 0; compno < s->ncomponents; compno++) {
                Jpeg2000Component *comp = s->tile[tileno].comp + compno;
                Jpeg2000CodingStyle *codsty = s->tile[tileno].codsty + compno;

                ff_jpeg2000_cleanup(comp, codsty);
            }
            av_freep(&s->tile[tileno].comp);
        }
    }
    av_freep(&s->tile);
    memset(s->codsty, 0, sizeof(s->codsty));
    memset(s->qntsty, 0, sizeof(s->qntsty));
    memset(s->properties, 0, sizeof(s->properties));
    memset(&s->poc , 0, sizeof(s->poc));
    s->numXtiles = s->numYtiles = 0;
    s->ncomponents = 0;
}

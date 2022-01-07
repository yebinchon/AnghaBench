
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_9__ {double f; int s; int i; int u; } ;
struct TYPE_12__ {int type; TYPE_1__ def; int data_offset; scalar_t__ id; } ;
struct TYPE_11__ {int num_levels; TYPE_2__* levels; } ;
struct TYPE_10__ {int length; } ;
typedef TYPE_3__ MatroskaDemuxContext ;
typedef TYPE_4__ EbmlSyntax ;


 int AVERROR (int ) ;





 int ENOMEM ;
 int LEVEL_ENDED ;
 int * av_strdup (int ) ;
 int ebml_parse (TYPE_3__*,TYPE_4__*,void*) ;

__attribute__((used)) static int ebml_parse_nest(MatroskaDemuxContext *matroska, EbmlSyntax *syntax,
                           void *data)
{
    int res;

    if (data) {
        for (int i = 0; syntax[i].id; i++)
            switch (syntax[i].type) {
            case 129:
                *(uint64_t *) ((char *) data + syntax[i].data_offset) = syntax[i].def.u;
                break;
            case 131:
                *(int64_t *) ((char *) data + syntax[i].data_offset) = syntax[i].def.i;
                break;
            case 132:
                *(double *) ((char *) data + syntax[i].data_offset) = syntax[i].def.f;
                break;
            case 130:
            case 128:

                if (syntax[i].def.s) {
                    uint8_t **dst = (uint8_t **) ((uint8_t *) data + syntax[i].data_offset);
                    *dst = av_strdup(syntax[i].def.s);
                    if (!*dst)
                        return AVERROR(ENOMEM);
                }
                break;
            }

        if (!matroska->levels[matroska->num_levels - 1].length) {
            matroska->num_levels--;
            return 0;
        }
    }

    do {
        res = ebml_parse(matroska, syntax, data);
    } while (!res);

    return res == LEVEL_ENDED ? 0 : res;
}

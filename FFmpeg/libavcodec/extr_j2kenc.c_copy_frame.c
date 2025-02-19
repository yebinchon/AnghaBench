
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int* i_data; int** coord; } ;
struct TYPE_8__ {int numXtiles; int numYtiles; int ncomponents; TYPE_1__* picture; scalar_t__ planar; TYPE_2__* tile; } ;
struct TYPE_7__ {TYPE_4__* comp; } ;
struct TYPE_6__ {int* linesize; int ** data; } ;
typedef TYPE_2__ Jpeg2000Tile ;
typedef TYPE_3__ Jpeg2000EncoderContext ;
typedef TYPE_4__ Jpeg2000Component ;



__attribute__((used)) static void copy_frame(Jpeg2000EncoderContext *s)
{
    int tileno, compno, i, y, x;
    uint8_t *line;
    for (tileno = 0; tileno < s->numXtiles * s->numYtiles; tileno++){
        Jpeg2000Tile *tile = s->tile + tileno;
        if (s->planar){
            for (compno = 0; compno < s->ncomponents; compno++){
                Jpeg2000Component *comp = tile->comp + compno;
                int *dst = comp->i_data;
                line = s->picture->data[compno]
                       + comp->coord[1][0] * s->picture->linesize[compno]
                       + comp->coord[0][0];
                for (y = comp->coord[1][0]; y < comp->coord[1][1]; y++){
                    uint8_t *ptr = line;
                    for (x = comp->coord[0][0]; x < comp->coord[0][1]; x++)
                        *dst++ = *ptr++ - (1 << 7);
                    line += s->picture->linesize[compno];
                }
            }
        } else{
            line = s->picture->data[0] + tile->comp[0].coord[1][0] * s->picture->linesize[0]
                   + tile->comp[0].coord[0][0] * s->ncomponents;

            i = 0;
            for (y = tile->comp[0].coord[1][0]; y < tile->comp[0].coord[1][1]; y++){
                uint8_t *ptr = line;
                for (x = tile->comp[0].coord[0][0]; x < tile->comp[0].coord[0][1]; x++, i++){
                    for (compno = 0; compno < s->ncomponents; compno++){
                        tile->comp[compno].i_data[i] = *ptr++ - (1 << 7);
                    }
                }
                line += s->picture->linesize[0];
            }
        }
    }
}

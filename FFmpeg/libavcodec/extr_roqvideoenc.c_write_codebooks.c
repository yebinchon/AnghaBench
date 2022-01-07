
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* cb4x4; TYPE_1__* cb2x2; int * out_buf; } ;
struct TYPE_9__ {int numCB2; int numCB4; size_t* f2i2; int* i2f2; size_t* f2i4; } ;
struct TYPE_8__ {size_t* idx; } ;
struct TYPE_7__ {int u; int v; int y; } ;
typedef TYPE_3__ RoqTempdata ;
typedef TYPE_4__ RoqContext ;


 int RoQ_QUAD_CODEBOOK ;
 int bytestream_put_buffer (int **,int ,int) ;
 int bytestream_put_byte (int **,int) ;
 int bytestream_put_le16 (int **,int ) ;
 int bytestream_put_le32 (int **,int) ;

__attribute__((used)) static void write_codebooks(RoqContext *enc, RoqTempdata *tempData)
{
    int i, j;
    uint8_t **outp= &enc->out_buf;

    if (tempData->numCB2) {
        bytestream_put_le16(outp, RoQ_QUAD_CODEBOOK);
        bytestream_put_le32(outp, tempData->numCB2*6 + tempData->numCB4*4);
        bytestream_put_byte(outp, tempData->numCB4);
        bytestream_put_byte(outp, tempData->numCB2);

        for (i=0; i<tempData->numCB2; i++) {
            bytestream_put_buffer(outp, enc->cb2x2[tempData->f2i2[i]].y, 4);
            bytestream_put_byte(outp, enc->cb2x2[tempData->f2i2[i]].u);
            bytestream_put_byte(outp, enc->cb2x2[tempData->f2i2[i]].v);
        }

        for (i=0; i<tempData->numCB4; i++)
            for (j=0; j<4; j++)
                bytestream_put_byte(outp, tempData->i2f2[enc->cb4x4[tempData->f2i4[i]].idx[j]]);

    }
}

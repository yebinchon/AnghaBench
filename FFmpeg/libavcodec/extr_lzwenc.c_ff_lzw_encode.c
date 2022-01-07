
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int bufsize; int output_bytes; scalar_t__ last_code; int tabsize; int maxcode; TYPE_1__* tab; } ;
struct TYPE_9__ {scalar_t__ hash_prefix; scalar_t__ code; } ;
typedef TYPE_2__ LZWEncodeState ;


 scalar_t__ LZW_PREFIX_EMPTY ;
 scalar_t__ LZW_PREFIX_FREE ;
 int addCode (TYPE_2__*,int ,scalar_t__,int) ;
 int clearTable (TYPE_2__*) ;
 int findCode (TYPE_2__*,int ,scalar_t__) ;
 int hash (int ,int ) ;
 int writeCode (TYPE_2__*,scalar_t__) ;
 int writtenBytes (TYPE_2__*) ;

int ff_lzw_encode(LZWEncodeState * s, const uint8_t * inbuf, int insize)
{
    int i;

    if(insize * 3 > (s->bufsize - s->output_bytes) * 2){
        return -1;
    }

    if (s->last_code == LZW_PREFIX_EMPTY)
        clearTable(s);

    for (i = 0; i < insize; i++) {
        uint8_t c = *inbuf++;
        int code = findCode(s, c, s->last_code);
        if (s->tab[code].hash_prefix == LZW_PREFIX_FREE) {
            writeCode(s, s->last_code);
            addCode(s, c, s->last_code, code);
            code= hash(0, c);
        }
        s->last_code = s->tab[code].code;
        if (s->tabsize >= s->maxcode - 1) {
            clearTable(s);
        }
    }

    return writtenBytes(s);
}

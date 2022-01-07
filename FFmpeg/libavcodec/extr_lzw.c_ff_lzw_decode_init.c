
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct LZWState {int codesize; int cursize; int top_slot; int clear_code; int end_code; int slot; int newcodes; int oc; int fc; int mode; int extra_slot; int stack; int sp; int curmask; scalar_t__ bs; scalar_t__ bbits; scalar_t__ bbuf; int gb; } ;
typedef int LZWState ;


 int FF_LZW_TIFF ;
 int LZW_MAXBITS ;
 int bytestream2_init (int *,int const*,int) ;
 int * mask ;

int ff_lzw_decode_init(LZWState *p, int csize, const uint8_t *buf, int buf_size, int mode)
{
    struct LZWState *s = (struct LZWState *)p;

    if(csize < 1 || csize >= LZW_MAXBITS)
        return -1;

    bytestream2_init(&s->gb, buf, buf_size);
    s->bbuf = 0;
    s->bbits = 0;
    s->bs = 0;


    s->codesize = csize;
    s->cursize = s->codesize + 1;
    s->curmask = mask[s->cursize];
    s->top_slot = 1 << s->cursize;
    s->clear_code = 1 << s->codesize;
    s->end_code = s->clear_code + 1;
    s->slot = s->newcodes = s->clear_code + 2;
    s->oc = s->fc = -1;
    s->sp = s->stack;

    s->mode = mode;
    s->extra_slot = s->mode == FF_LZW_TIFF;
    return 0;
}

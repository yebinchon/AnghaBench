
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int** linelen; int ndeclevels; int* i_linebuf; int** mod; } ;
typedef TYPE_1__ DWTContext ;


 int I_LFTG_X ;
 int I_PRESHIFT ;
 int sd_1d97_int (int*,int,int) ;

__attribute__((used)) static void dwt_encode97_int(DWTContext *s, int *t)
{
    int lev;
    int w = s->linelen[s->ndeclevels-1][0];
    int h = s->linelen[s->ndeclevels-1][1];
    int i;
    int *line = s->i_linebuf;
    line += 5;

    for (i = 0; i < w * h; i++)
        t[i] *= 1 << I_PRESHIFT;

    for (lev = s->ndeclevels-1; lev >= 0; lev--){
        int lh = s->linelen[lev][0],
            lv = s->linelen[lev][1],
            mh = s->mod[lev][0],
            mv = s->mod[lev][1],
            lp;
        int *l;


        l = line + mv;
        for (lp = 0; lp < lh; lp++) {
            int i, j = 0;

            for (i = 0; i < lv; i++)
                l[i] = t[w*i + lp];

            sd_1d97_int(line, mv, mv + lv);


            for (i = mv; i < lv; i+=2, j++)
                t[w*j + lp] = ((l[i] * I_LFTG_X) + (1 << 15)) >> 16;
            for (i = 1-mv; i < lv; i+=2, j++)
                t[w*j + lp] = l[i];
        }


        l = line + mh;
        for (lp = 0; lp < lv; lp++){
            int i, j = 0;

            for (i = 0; i < lh; i++)
                l[i] = t[w*lp + i];

            sd_1d97_int(line, mh, mh + lh);


            for (i = mh; i < lh; i+=2, j++)
                t[w*lp + j] = ((l[i] * I_LFTG_X) + (1 << 15)) >> 16;
            for (i = 1-mh; i < lh; i+=2, j++)
                t[w*lp + j] = l[i];
        }

    }

    for (i = 0; i < w * h; i++)
        t[i] = (t[i] + ((1<<I_PRESHIFT)>>1)) >> I_PRESHIFT;
}

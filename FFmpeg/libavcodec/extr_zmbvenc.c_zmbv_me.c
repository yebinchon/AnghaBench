
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int bypp; int lrange; int urange; TYPE_1__* avctx; } ;
typedef TYPE_2__ ZmbvEncContext ;
struct TYPE_5__ {scalar_t__ height; scalar_t__ width; } ;


 int FFMIN (int ,scalar_t__) ;
 int ZMBV_BLOCK ;
 int block_cmp (TYPE_2__*,int *,int,int *,int,int,int,int*) ;

__attribute__((used)) static int zmbv_me(ZmbvEncContext *c, uint8_t *src, int sstride, uint8_t *prev,
                   int pstride, int x, int y, int *mx, int *my, int *xored)
{
    int dx, dy, txored, tv, bv, bw, bh;
    int mx0, my0;

    mx0 = *mx;
    my0 = *my;
    bw = FFMIN(ZMBV_BLOCK, c->avctx->width - x);
    bh = FFMIN(ZMBV_BLOCK, c->avctx->height - y);


    bv = block_cmp(c, src, sstride, prev, pstride, bw, bh, xored);
    *mx = *my = 0;
    if(!bv) return 0;


    if (mx0 || my0){
        tv = block_cmp(c, src, sstride, prev + mx0 * c->bypp + my0 * pstride, pstride, bw, bh, &txored);
        if(tv < bv){
            bv = tv;
            *mx = mx0;
            *my = my0;
            *xored = txored;
            if(!bv) return 0;
        }
    }


    for(dy = -c->lrange; dy <= c->urange; dy++){
        for(dx = -c->lrange; dx <= c->urange; dx++){
            if(!dx && !dy) continue;
            if(dx == mx0 && dy == my0) continue;
            tv = block_cmp(c, src, sstride, prev + dx * c->bypp + dy * pstride, pstride, bw, bh, &txored);
            if(tv < bv){
                 bv = tv;
                 *mx = dx;
                 *my = dy;
                 *xored = txored;
                 if(!bv) return 0;
             }
         }
    }
    return bv;
}

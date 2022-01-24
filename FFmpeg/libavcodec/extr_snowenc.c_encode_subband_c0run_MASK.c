#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int const bytestream_end; int const bytestream; } ;
struct TYPE_10__ {int* run_buffer; TYPE_4__ c; int /*<<< orphan*/  avctx; } ;
struct TYPE_9__ {int width; int height; int /*<<< orphan*/ ** state; TYPE_1__* parent; } ;
struct TYPE_8__ {int width; int height; } ;
typedef  TYPE_2__ SubBand ;
typedef  TYPE_3__ SnowContext ;
typedef  int IDWTELEM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int) ; 
 int* ff_quant3bA ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC7(SnowContext *s, SubBand *b, const IDWTELEM *src, const IDWTELEM *parent, int stride, int orientation){
    const int w= b->width;
    const int h= b->height;
    int x, y;

    if(1){
        int run=0;
        int *runs = s->run_buffer;
        int run_index=0;
        int max_index;

        for(y=0; y<h; y++){
            for(x=0; x<w; x++){
                int v, p=0;
                int /*ll=0, */l=0, lt=0, t=0, rt=0;
                v= src[x + y*stride];

                if(y){
                    t= src[x + (y-1)*stride];
                    if(x){
                        lt= src[x - 1 + (y-1)*stride];
                    }
                    if(x + 1 < w){
                        rt= src[x + 1 + (y-1)*stride];
                    }
                }
                if(x){
                    l= src[x - 1 + y*stride];
                    /*if(x > 1){
                        if(orientation==1) ll= src[y + (x-2)*stride];
                        else               ll= src[x - 2 + y*stride];
                    }*/
                }
                if(parent){
                    int px= x>>1;
                    int py= y>>1;
                    if(px<b->parent->width && py<b->parent->height)
                        p= parent[px + py*2*stride];
                }
                if(!(/*ll|*/l|lt|t|rt|p)){
                    if(v){
                        runs[run_index++]= run;
                        run=0;
                    }else{
                        run++;
                    }
                }
            }
        }
        max_index= run_index;
        runs[run_index++]= run;
        run_index=0;
        run= runs[run_index++];

        FUNC6(&s->c, b->state[30], max_index, 0);
        if(run_index <= max_index)
            FUNC6(&s->c, b->state[1], run, 3);

        for(y=0; y<h; y++){
            if(s->c.bytestream_end - s->c.bytestream < w*40){
                FUNC3(s->avctx, AV_LOG_ERROR, "encoded frame too large\n");
                return FUNC0(ENOMEM);
            }
            for(x=0; x<w; x++){
                int v, p=0;
                int /*ll=0, */l=0, lt=0, t=0, rt=0;
                v= src[x + y*stride];

                if(y){
                    t= src[x + (y-1)*stride];
                    if(x){
                        lt= src[x - 1 + (y-1)*stride];
                    }
                    if(x + 1 < w){
                        rt= src[x + 1 + (y-1)*stride];
                    }
                }
                if(x){
                    l= src[x - 1 + y*stride];
                    /*if(x > 1){
                        if(orientation==1) ll= src[y + (x-2)*stride];
                        else               ll= src[x - 2 + y*stride];
                    }*/
                }
                if(parent){
                    int px= x>>1;
                    int py= y>>1;
                    if(px<b->parent->width && py<b->parent->height)
                        p= parent[px + py*2*stride];
                }
                if(/*ll|*/l|lt|t|rt|p){
                    int context= FUNC4(/*FFABS(ll) + */3*FUNC1(l) + FUNC1(lt) + 2*FUNC1(t) + FUNC1(rt) + FUNC1(p));

                    FUNC5(&s->c, &b->state[0][context], !!v);
                }else{
                    if(!run){
                        run= runs[run_index++];

                        if(run_index <= max_index)
                            FUNC6(&s->c, b->state[1], run, 3);
                        FUNC2(v);
                    }else{
                        run--;
                        FUNC2(!v);
                    }
                }
                if(v){
                    int context= FUNC4(/*FFABS(ll) + */3*FUNC1(l) + FUNC1(lt) + 2*FUNC1(t) + FUNC1(rt) + FUNC1(p));
                    int l2= 2*FUNC1(l) + (l<0);
                    int t2= 2*FUNC1(t) + (t<0);

                    FUNC6(&s->c, b->state[context + 2], FUNC1(v)-1, context-4);
                    FUNC5(&s->c, &b->state[0][16 + 1 + 3 + ff_quant3bA[l2&0xFF] + 3*ff_quant3bA[t2&0xFF]], v<0);
                }
            }
        }
    }
    return 0;
}
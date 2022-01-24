#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int* linesize; int** data; } ;
struct TYPE_7__ {int nb_planes; TYPE_1__* avctx; int /*<<< orphan*/  chroma_v_shift; int /*<<< orphan*/  chroma_h_shift; } ;
struct TYPE_6__ {int width; int height; } ;
typedef  TYPE_2__ SnowContext ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int EDGE_WIDTH ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int* FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(SnowContext *s, uint8_t *halfpel[4][4], AVFrame *frame){
    int p,x,y;

    for(p=0; p < s->nb_planes; p++){
        int is_chroma= !!p;
        int w= is_chroma ? FUNC1(s->avctx->width,  s->chroma_h_shift) : s->avctx->width;
        int h= is_chroma ? FUNC1(s->avctx->height, s->chroma_v_shift) : s->avctx->height;
        int ls= frame->linesize[p];
        uint8_t *src= frame->data[p];

        halfpel[1][p] = FUNC3(ls, (h + 2 * EDGE_WIDTH));
        halfpel[2][p] = FUNC3(ls, (h + 2 * EDGE_WIDTH));
        halfpel[3][p] = FUNC3(ls, (h + 2 * EDGE_WIDTH));
        if (!halfpel[1][p] || !halfpel[2][p] || !halfpel[3][p]) {
            FUNC2(&halfpel[1][p]);
            FUNC2(&halfpel[2][p]);
            FUNC2(&halfpel[3][p]);
            return FUNC0(ENOMEM);
        }
        halfpel[1][p] += EDGE_WIDTH * (1 + ls);
        halfpel[2][p] += EDGE_WIDTH * (1 + ls);
        halfpel[3][p] += EDGE_WIDTH * (1 + ls);

        halfpel[0][p]= src;
        for(y=0; y<h; y++){
            for(x=0; x<w; x++){
                int i= y*ls + x;

                halfpel[1][p][i]= (20*(src[i] + src[i+1]) - 5*(src[i-1] + src[i+2]) + (src[i-2] + src[i+3]) + 16 )>>5;
            }
        }
        for(y=0; y<h; y++){
            for(x=0; x<w; x++){
                int i= y*ls + x;

                halfpel[2][p][i]= (20*(src[i] + src[i+ls]) - 5*(src[i-ls] + src[i+2*ls]) + (src[i-2*ls] + src[i+3*ls]) + 16 )>>5;
            }
        }
        src= halfpel[1][p];
        for(y=0; y<h; y++){
            for(x=0; x<w; x++){
                int i= y*ls + x;

                halfpel[3][p][i]= (20*(src[i] + src[i+ls]) - 5*(src[i-ls] + src[i+2*ls]) + (src[i-2*ls] + src[i+3*ls]) + 16 )>>5;
            }
        }

//FIXME border!
    }
    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nreslevels; int log2_cblk_width; int log2_cblk_height; scalar_t__ transform; } ;
struct TYPE_6__ {int buf_end; int buf; TYPE_1__* avctx; TYPE_3__ codsty; } ;
struct TYPE_5__ {scalar_t__ pix_fmt; } ;
typedef  TYPE_2__ Jpeg2000EncoderContext ;
typedef  TYPE_3__ Jpeg2000CodingStyle ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_YUV444P ; 
 scalar_t__ FF_DWT53 ; 
 int JPEG2000_COD ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static int FUNC2(Jpeg2000EncoderContext *s)
{
    Jpeg2000CodingStyle *codsty = &s->codsty;

    if (s->buf_end - s->buf < 14)
        return -1;

    FUNC0(&s->buf, JPEG2000_COD);
    FUNC0(&s->buf, 12); // Lcod
    FUNC1(&s->buf, 0);  // Scod
    // SGcod
    FUNC1(&s->buf, 0); // progression level
    FUNC0(&s->buf, 1); // num of layers
    if(s->avctx->pix_fmt == AV_PIX_FMT_YUV444P){
        FUNC1(&s->buf, 0); // unspecified
    }else{
        FUNC1(&s->buf, 0); // unspecified
    }
    // SPcod
    FUNC1(&s->buf, codsty->nreslevels - 1); // num of decomp. levels
    FUNC1(&s->buf, codsty->log2_cblk_width-2); // cblk width
    FUNC1(&s->buf, codsty->log2_cblk_height-2); // cblk height
    FUNC1(&s->buf, 0); // cblk style
    FUNC1(&s->buf, codsty->transform == FF_DWT53); // transformation
    return 0;
}
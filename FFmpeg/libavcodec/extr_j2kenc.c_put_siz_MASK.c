#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buf_end; int buf; int ncomponents; int* chroma_shift; int /*<<< orphan*/  tile_height; int /*<<< orphan*/  tile_width; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ Jpeg2000EncoderContext ;

/* Variables and functions */
 int JPEG2000_SIZ ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 

__attribute__((used)) static int FUNC3(Jpeg2000EncoderContext *s)
{
    int i;

    if (s->buf_end - s->buf < 40 + 3 * s->ncomponents)
        return -1;

    FUNC0(&s->buf, JPEG2000_SIZ);
    FUNC0(&s->buf, 38 + 3 * s->ncomponents); // Lsiz
    FUNC0(&s->buf, 0); // Rsiz
    FUNC1(&s->buf, s->width); // width
    FUNC1(&s->buf, s->height); // height
    FUNC1(&s->buf, 0); // X0Siz
    FUNC1(&s->buf, 0); // Y0Siz

    FUNC1(&s->buf, s->tile_width); // XTSiz
    FUNC1(&s->buf, s->tile_height); // YTSiz
    FUNC1(&s->buf, 0); // XT0Siz
    FUNC1(&s->buf, 0); // YT0Siz
    FUNC0(&s->buf, s->ncomponents); // CSiz

    for (i = 0; i < s->ncomponents; i++){ // Ssiz_i XRsiz_i, YRsiz_i
        FUNC2(&s->buf, 7);
        FUNC2(&s->buf, i?1<<s->chroma_shift[0]:1);
        FUNC2(&s->buf, i?1<<s->chroma_shift[1]:1);
    }
    return 0;
}
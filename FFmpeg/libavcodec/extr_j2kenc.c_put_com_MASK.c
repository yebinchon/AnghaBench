#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int buf_end; int buf; TYPE_1__* avctx; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ Jpeg2000EncoderContext ;

/* Variables and functions */
 int AV_CODEC_FLAG_BITEXACT ; 
 int JPEG2000_COM ; 
 int /*<<< orphan*/  LIBAVCODEC_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Jpeg2000EncoderContext *s, int compno)
{
    int size = 4 + FUNC2(LIBAVCODEC_IDENT);

    if (s->avctx->flags & AV_CODEC_FLAG_BITEXACT)
        return 0;

    if (s->buf_end - s->buf < size + 2)
        return -1;

    FUNC0(&s->buf, JPEG2000_COM);
    FUNC0(&s->buf, size);
    FUNC0(&s->buf, 1); // General use (ISO/IEC 8859-15 (Latin) values)

    FUNC1(&s->buf, LIBAVCODEC_IDENT, FUNC2(LIBAVCODEC_IDENT));

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int /*<<< orphan*/  chained_options; scalar_t__ hd; int /*<<< orphan*/  end_chunked_post; int /*<<< orphan*/  inflate_buffer; int /*<<< orphan*/  inflate_stream; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    int ret = 0;
    HTTPContext *s = h->priv_data;

#if CONFIG_ZLIB
    inflateEnd(&s->inflate_stream);
    av_freep(&s->inflate_buffer);
#endif /* CONFIG_ZLIB */

    if (s->hd && !s->end_chunked_post)
        /* Close the write direction by sending the end of chunked encoding. */
        ret = FUNC3(h, h->flags);

    if (s->hd)
        FUNC2(&s->hd);
    FUNC0(&s->chained_options);
    return ret;
}
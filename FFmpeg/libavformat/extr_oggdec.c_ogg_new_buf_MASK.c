#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ogg_stream {int bufpos; int pstart; int /*<<< orphan*/ * buf; scalar_t__ bufsize; } ;
struct ogg {struct ogg_stream* streams; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct ogg *ogg, int idx)
{
    struct ogg_stream *os = ogg->streams + idx;
    uint8_t *nb = FUNC2(os->bufsize + AV_INPUT_BUFFER_PADDING_SIZE);
    int size = os->bufpos - os->pstart;

    if (!nb)
        return FUNC0(ENOMEM);

    if (os->buf) {
        FUNC3(nb, os->buf + os->pstart, size);
        FUNC1(os->buf);
    }

    os->buf    = nb;
    os->bufpos = size;
    os->pstart = 0;

    return 0;
}
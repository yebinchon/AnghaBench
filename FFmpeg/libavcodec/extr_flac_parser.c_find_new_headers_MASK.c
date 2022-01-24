#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* headers; int /*<<< orphan*/  fifo_buf; scalar_t__ nb_headers_found; } ;
typedef  TYPE_1__ FLACParseContext ;
typedef  TYPE_2__ FLACHeaderMarker ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int) ; 
 int MAX_FRAME_HEADER_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int,int*) ; 

__attribute__((used)) static int FUNC6(FLACParseContext *fpc, int search_start)
{
    FLACHeaderMarker *end;
    int search_end, size = 0, read_len, temp;
    uint8_t *buf;
    fpc->nb_headers_found = 0;

    /* Search for a new header of at most 16 bytes. */
    search_end = FUNC2(fpc->fifo_buf) - (MAX_FRAME_HEADER_SIZE - 1);
    read_len   = search_end - search_start + 1;
    buf        = FUNC5(fpc, search_start, &read_len);
    size       = FUNC3(fpc, buf, read_len, search_start);
    search_start += read_len - 1;

    /* If fifo end was hit do the wrap around. */
    if (search_start != search_end) {
        uint8_t wrap[2];

        wrap[0]  = buf[read_len - 1];
        /* search_start + 1 is the post-wrap offset in the fifo. */
        read_len = search_end - (search_start + 1) + 1;

        buf      = FUNC5(fpc, search_start + 1, &read_len);
        wrap[1]  = buf[0];

        if ((FUNC0(wrap) & 0xFFFE) == 0xFFF8) {
            temp = FUNC4(fpc, search_start);
            size = FUNC1(size, temp);
        }
        search_start++;

        /* Continue to do the last half of the wrap. */
        temp     = FUNC3(fpc, buf, read_len, search_start);
        size     = FUNC1(size, temp);
        search_start += read_len - 1;
    }

    /* Return the size even if no new headers were found. */
    if (!size && fpc->headers)
        for (end = fpc->headers; end; end = end->next)
            size++;
    return size;
}
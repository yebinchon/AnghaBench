#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ len; scalar_t__ offset; int /*<<< orphan*/  chunks; } ;
typedef  TYPE_1__ network_queue ;
typedef  scalar_t__ gsize ;
struct TYPE_12__ {scalar_t__ len; scalar_t__ str; } ;
typedef  TYPE_2__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 

GString *FUNC5(network_queue *queue, gsize steal_len, GString *dest) {
	gsize we_want = steal_len;
	GString *chunk;

	if (queue->len < steal_len) {
		return NULL;
	}

	while ((chunk = FUNC0(queue->chunks))) {
		gsize we_have = we_want < (chunk->len - queue->offset) ? we_want : (chunk->len - queue->offset);

		if (!dest && (queue->offset == 0) && (chunk->len == steal_len)) {
			/* optimize the common case that we want to have to full chunk
			 *
			 * if dest is null, we can remove the GString from the queue and return it directly without
			 * copying it
			 */
			dest = FUNC1(queue->chunks);
			queue->len -= we_have;
			return dest;
		}

		if (!dest) {
			/* if we don't have a dest-buffer yet, create one */
			dest = FUNC4(steal_len);
		}
		FUNC2(dest, chunk->str + queue->offset, we_have);

		queue->offset += we_have;
		queue->len    -= we_have;
		we_want -= we_have;

		if (chunk->len == queue->offset) {
			/* the chunk is done, remove it */
			FUNC3(FUNC1(queue->chunks), TRUE);
			queue->offset = 0;
		} else {
			break;
		}
	}

	return dest;
}
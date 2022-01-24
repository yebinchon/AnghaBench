#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct chunk {int /*<<< orphan*/  chunk_data_pos; TYPE_1__* file; } ;
struct TYPE_2__ {int read_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct chunk *chunk)
   /* Reset the position to 'chunk_data_pos' - the start of the data for this
    * chunk.  As a side effect the read_count in the file is reset to 8, just
    * after the length/type header.
    */
{
   chunk->file->read_count = 8;
   FUNC0(chunk->file, &chunk->chunk_data_pos);
}
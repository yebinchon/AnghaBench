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
struct TYPE_3__ {int buffer_size; int buffer_index; int /*<<< orphan*/  buffer; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ LAMEContext ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC2(LAMEContext *s)
{
    if (!s->buffer || s->buffer_size - s->buffer_index < BUFFER_SIZE) {
        int new_size = s->buffer_index + 2 * BUFFER_SIZE, err;

        FUNC1(s->avctx, "resizing output buffer: %d -> %d\n", s->buffer_size,
                new_size);
        if ((err = FUNC0(&s->buffer, new_size)) < 0) {
            s->buffer_size = s->buffer_index = 0;
            return err;
        }
        s->buffer_size = new_size;
    }
    return 0;
}
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
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int GIF_EXTENSION_INTRODUCER ; 
 int GIF_GCE_EXT_LABEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, uint8_t *data, int size)
{
    GetByteContext gb;
    int x;

    FUNC2(&gb, data, size);

    while (FUNC1(&gb) > 0) {
        x = FUNC0(&gb);
        if (x != GIF_EXTENSION_INTRODUCER)
            return 0;

        x = FUNC0(&gb);
        while (x != GIF_GCE_EXT_LABEL && FUNC1(&gb) > 0) {
            int block_size = FUNC0(&gb);
            if (!block_size)
                break;
            FUNC3(&gb, block_size);
        }

        if (x == GIF_GCE_EXT_LABEL)
            return FUNC4(&gb) + 2;
    }

    return 0;
}
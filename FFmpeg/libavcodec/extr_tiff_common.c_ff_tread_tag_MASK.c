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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned int TIFF_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (unsigned int) ; 
 unsigned int* type_sizes ; 

int FUNC6(GetByteContext *gb, int le, unsigned *tag, unsigned *type,
                 unsigned *count, int *next)
{
    int ifd_tag;
    int valid_type;

    *tag    = FUNC4(gb, le);
    *type   = FUNC4(gb, le);
    *count  = FUNC3 (gb, le);

    ifd_tag    = FUNC5(*tag);
    valid_type = *type != 0 && *type < FUNC0(type_sizes);

    *next = FUNC2(gb) + 4;

    // check for valid type
    if (!valid_type) {
        return AVERROR_INVALIDDATA;
    }

    // seek to offset if this is an IFD-tag or
    // if count values do not fit into the offset value
    if (ifd_tag || (*count > 4 || !(type_sizes[*type] * (*count) <= 4 || *type == TIFF_STRING))) {
        FUNC1(gb, FUNC3 (gb, le), SEEK_SET);
    }

    return 0;
}
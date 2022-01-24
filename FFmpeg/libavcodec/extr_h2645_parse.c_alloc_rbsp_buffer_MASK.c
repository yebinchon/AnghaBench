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
struct TYPE_3__ {unsigned int rbsp_buffer_alloc_size; int /*<<< orphan*/ * rbsp_buffer; scalar_t__ rbsp_buffer_ref; } ;
typedef  TYPE_1__ H2645RBSP ;

/* Variables and functions */
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC9(H2645RBSP *rbsp, unsigned int size, int use_ref)
{
    int min_size = size;

    if (size > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        goto fail;
    size += AV_INPUT_BUFFER_PADDING_SIZE;

    if (rbsp->rbsp_buffer_alloc_size >= size &&
        (!rbsp->rbsp_buffer_ref || FUNC3(rbsp->rbsp_buffer_ref))) {
        FUNC1(rbsp->rbsp_buffer);
        FUNC8(rbsp->rbsp_buffer + min_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
        return;
    }

    size = FUNC0(size + size / 16 + 32, INT_MAX);

    if (rbsp->rbsp_buffer_ref)
        FUNC4(&rbsp->rbsp_buffer_ref);
    else
        FUNC5(rbsp->rbsp_buffer);

    rbsp->rbsp_buffer = FUNC7(size);
    if (!rbsp->rbsp_buffer)
        goto fail;
    rbsp->rbsp_buffer_alloc_size = size;

    if (use_ref) {
        rbsp->rbsp_buffer_ref = FUNC2(rbsp->rbsp_buffer, size,
                                                 NULL, NULL, 0);
        if (!rbsp->rbsp_buffer_ref)
            goto fail;
    }

    return;

fail:
    rbsp->rbsp_buffer_alloc_size = 0;
    if (rbsp->rbsp_buffer_ref) {
        FUNC4(&rbsp->rbsp_buffer_ref);
        rbsp->rbsp_buffer = NULL;
    } else
        FUNC6(&rbsp->rbsp_buffer);

    return;
}
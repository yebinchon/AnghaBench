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
struct representation {int /*<<< orphan*/  input; int /*<<< orphan*/  init_sec_data_len; scalar_t__ n_fragments; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int64_t FUNC2(void *opaque, int64_t offset, int whence)
{
    struct representation *v = opaque;
    if (v->n_fragments && !v->init_sec_data_len) {
        return FUNC1(v->input, offset, whence);
    }

    return FUNC0(ENOSYS);
}
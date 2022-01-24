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
struct s_write {int /*<<< orphan*/  list; scalar_t__ subline; scalar_t__ enc_buffer_used; scalar_t__ enc_buffer_capacity; scalar_t__ enc_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (struct s_write *wb)
{
    if( wb->enc_buffer ) {
        FUNC0(wb->enc_buffer);
        wb->enc_buffer_capacity = 0;
        wb->enc_buffer_used = 0;
    }
    if( wb->subline ) {
        FUNC0(wb->subline);
    }
    FUNC1(&wb->list);
}
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
typedef  void* hrtime_t ;
typedef  int /*<<< orphan*/  dtrace_icookie_t ;
struct TYPE_3__ {int dtb_flags; int dtb_xamot_flags; void* dtb_switched; int /*<<< orphan*/  dtb_limit; int /*<<< orphan*/  dtb_cur_limit; void* dtb_interval; scalar_t__ dtb_errors; scalar_t__ dtb_drops; scalar_t__ dtb_offset; scalar_t__ dtb_xamot_errors; scalar_t__ dtb_xamot_offset; scalar_t__ dtb_xamot_drops; void* dtb_xamot; void* dtb_tomax; } ;
typedef  TYPE_1__ dtrace_buffer_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DTRACEBUF_DROPPED ; 
 int DTRACEBUF_ERROR ; 
 int DTRACEBUF_NOSWITCH ; 
 int DTRACEBUF_RING ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(dtrace_buffer_t *buf)
{
	caddr_t tomax = buf->dtb_tomax;
	caddr_t xamot = buf->dtb_xamot;
	dtrace_icookie_t cookie;
	hrtime_t now;

	FUNC0(!(buf->dtb_flags & DTRACEBUF_NOSWITCH));
	FUNC0(!(buf->dtb_flags & DTRACEBUF_RING));

	cookie = FUNC2();
	now = FUNC1();
	buf->dtb_tomax = xamot;
	buf->dtb_xamot = tomax;
	buf->dtb_xamot_drops = buf->dtb_drops;
	buf->dtb_xamot_offset = buf->dtb_offset;
	buf->dtb_xamot_errors = buf->dtb_errors;
	buf->dtb_xamot_flags = buf->dtb_flags;
	buf->dtb_offset = 0;
	buf->dtb_drops = 0;
	buf->dtb_errors = 0;
	buf->dtb_flags &= ~(DTRACEBUF_ERROR | DTRACEBUF_DROPPED);
	buf->dtb_interval = now - buf->dtb_switched;
	buf->dtb_switched = now;
	buf->dtb_cur_limit = buf->dtb_limit;

	FUNC3(cookie);
}
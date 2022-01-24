#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int cursize; struct TYPE_8__* data; } ;
typedef  TYPE_1__ msg_t ;
typedef  TYPE_1__ byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 

void FUNC2(msg_t *buf, byte *data, int length, msg_t *src)
{
	if (length<src->cursize) {
		FUNC0( ERR_DROP, "MSG_Copy: can't copy into a smaller msg_t buffer");
	}
	FUNC1(buf, src, sizeof(msg_t));
	buf->data = data;
	FUNC1(buf->data, src->data, src->cursize);
}
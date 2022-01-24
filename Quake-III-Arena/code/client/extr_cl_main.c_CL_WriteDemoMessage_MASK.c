#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cursize; int* data; } ;
typedef  TYPE_1__ msg_t ;
struct TYPE_5__ {int serverMessageSequence; int /*<<< orphan*/  demofile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 TYPE_2__ clc ; 

void FUNC2 ( msg_t *msg, int headerBytes ) {
	int		len, swlen;

	// write the packet sequence
	len = clc.serverMessageSequence;
	swlen = FUNC1( len );
	FUNC0 (&swlen, 4, clc.demofile);

	// skip the packet sequencing information
	len = msg->cursize - headerBytes;
	swlen = FUNC1(len);
	FUNC0 (&swlen, 4, clc.demofile);
	FUNC0 ( msg->data + headerBytes, len, clc.demofile );
}
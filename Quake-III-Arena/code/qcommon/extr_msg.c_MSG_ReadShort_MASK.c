#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ readcount; scalar_t__ cursize; } ;
typedef  TYPE_1__ msg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 

int FUNC1( msg_t *msg ) {
	int	c;
	
	c = (short)FUNC0( msg, 16 );
	if ( msg->readcount > msg->cursize ) {
		c = -1;
	}	

	return c;
}
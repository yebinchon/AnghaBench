#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16 ;
struct TYPE_7__ {scalar_t__ p; scalar_t__ end; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
 int ISO_PDU_DT ; 
 int /*<<< orphan*/  iso_hdr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(STREAM s)
{
	uint16 length;

	FUNC2(s, iso_hdr);
	length = s->end - s->p;

	FUNC1(s, 3);	/* version */
	FUNC1(s, 0);	/* reserved */
	FUNC0(s, length);

	FUNC1(s, 2);	/* hdrlen */
	FUNC1(s, ISO_PDU_DT);	/* code */
	FUNC1(s, 0x80);	/* eot */

	FUNC3(s);
}
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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (short) ; 

int	FUNC2( fileHandle_t f ) {
	short	v;

	FUNC0( &v, sizeof(v), f );

	return FUNC1( v);
}
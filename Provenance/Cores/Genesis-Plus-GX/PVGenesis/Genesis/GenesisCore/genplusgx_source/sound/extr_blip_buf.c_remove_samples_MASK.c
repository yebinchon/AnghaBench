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
typedef  int /*<<< orphan*/  buf_t ;
struct TYPE_4__ {int offset; } ;
typedef  TYPE_1__ blip_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int buf_extra ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int time_bits ; 
 int time_unit ; 

__attribute__((used)) static void FUNC3( blip_t* m, int count )
{
	buf_t* buf = FUNC0( m );
	int remain = (m->offset >> time_bits) + buf_extra - count;
  m->offset -= count * time_unit;
  
	FUNC1( &buf [0], &buf [count], remain * sizeof buf [0] );
	FUNC2( &buf [remain], 0, count * sizeof buf [0] );
}
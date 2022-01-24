#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t curvalue; } ;
struct TYPE_8__ {int curvalue; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {TYPE_1__ field; } ;
struct TYPE_10__ {TYPE_4__ effects; TYPE_3__ handicap; TYPE_2__ name; } ;

/* Variables and functions */
 TYPE_5__ s_playersettings ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int* uitogamecode ; 

__attribute__((used)) static void FUNC2( void ) {
	// name
	FUNC0( "name", s_playersettings.name.field.buffer );

	// handicap
	FUNC1( "handicap", 100 - s_playersettings.handicap.curvalue * 5 );

	// effects color
	FUNC1( "color1", uitogamecode[s_playersettings.effects.curvalue] );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* client; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_6__ {int noclip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int g_entities ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void FUNC3( gentity_t *ent ) {
	char	*msg;

	if ( !FUNC0( ent ) ) {
		return;
	}

	if ( ent->client->noclip ) {
		msg = "noclip OFF\n";
	} else {
		msg = "noclip ON\n";
	}
	ent->client->noclip = !ent->client->noclip;

	FUNC1( ent-g_entities, FUNC2("print \"%s\"", msg));
}
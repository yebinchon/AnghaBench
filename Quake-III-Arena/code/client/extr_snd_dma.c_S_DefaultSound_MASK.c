#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int soundLength; TYPE_3__* soundData; } ;
typedef  TYPE_1__ sfx_t ;
struct TYPE_5__ {int* sndChunk; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 

void FUNC1( sfx_t *sfx ) {
	
	int		i;

	sfx->soundLength = 512;
	sfx->soundData = FUNC0();
	sfx->soundData->next = NULL;


	for ( i = 0 ; i < sfx->soundLength ; i++ ) {
		sfx->soundData->sndChunk[i] = i;
	}
}
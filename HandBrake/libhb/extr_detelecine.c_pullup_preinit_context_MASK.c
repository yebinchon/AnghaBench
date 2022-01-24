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
struct pullup_context {int /*<<< orphan*/  nplanes; void* background; void* stride; void* h; void* w; void* bpp; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 

void FUNC1( struct pullup_context * c )
{
    c->bpp        = FUNC0( c->nplanes, sizeof(int) );
    c->w          = FUNC0( c->nplanes, sizeof(int) );
    c->h          = FUNC0( c->nplanes, sizeof(int) );
    c->stride     = FUNC0( c->nplanes, sizeof(int) );
    c->background = FUNC0( c->nplanes, sizeof(int) );
}
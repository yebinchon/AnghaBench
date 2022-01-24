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
struct pullup_context {int nplanes; int* h; int* stride; int /*<<< orphan*/ * background; } ;
struct pullup_buffer {int* size; int /*<<< orphan*/ * planes; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3( struct pullup_context * c,
                                 struct pullup_buffer * b )
{
    int i;
    if( b->planes ) return;
    b->planes = FUNC0( c->nplanes, sizeof(unsigned char *) );
    b->size = FUNC0( c->nplanes, sizeof(int) );
    for ( i = 0; i < c->nplanes; i++ )
    {
        b->size[i] = c->h[i] * c->stride[i];
        b->planes[i] = FUNC1(b->size[i]);
        /* Deal with idiotic 128=0 for chroma: */
        FUNC2( b->planes[i], c->background[i], b->size[i] );
    }
}
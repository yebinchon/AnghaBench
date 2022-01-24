#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pullup_frame {int length; size_t parity; scalar_t__ buffer; scalar_t__* ifields; scalar_t__* ofields; scalar_t__ lock; } ;
struct pullup_context {TYPE_1__* first; scalar_t__ verbose; struct pullup_frame* frame; } ;
struct TYPE_2__ {int affinity; size_t parity; scalar_t__ buffer; struct TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct pullup_context*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pullup_context*,TYPE_1__*) ; 

struct pullup_frame * FUNC4( struct pullup_context * c )
{
    int i;
    struct pullup_frame * fr = c->frame;
    int n = FUNC1( c );
    int aff = c->first->next->affinity;

    if ( !n ) return 0;
    if ( fr->lock ) return 0;

    if ( c->verbose )
    {
        FUNC3(c, c->first);
        FUNC0("duration: %d    \n", n);
    }

    fr->lock++;
    fr->length = n;
    fr->parity = c->first->parity;
    fr->buffer = 0;
    for( i = 0; i < n; i++ )
    {
        /* We cheat and steal the buffer without release+relock */
        fr->ifields[i] = c->first->buffer;
        c->first->buffer = 0;
        c->first = c->first->next;
    }

    if( n == 1 )
    {
        fr->ofields[fr->parity] = fr->ifields[0];
        fr->ofields[fr->parity^1] = 0;
    }
    else if( n == 2 )
    {
        fr->ofields[fr->parity] = fr->ifields[0];
        fr->ofields[fr->parity^1] = fr->ifields[1];
    }
    else if( n == 3 )
    {
        if( aff == 0 )
        {
            aff = (fr->ifields[0] == fr->ifields[1]) ? -1 : 1;
        }
        fr->ofields[fr->parity]   = fr->ifields[1+aff];
        fr->ofields[fr->parity^1] = fr->ifields[1];
    }
    FUNC2( fr->ofields[0], 0 );
    FUNC2( fr->ofields[1], 1 );

    if( fr->ofields[0] == fr->ofields[1] )
    {
        fr->buffer = fr->ofields[0];
        FUNC2(fr->buffer, 2);
        return fr;
    }
    return fr;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kind_t ;
struct TYPE_10__ {TYPE_3__* list; } ;
struct TYPE_8__ {TYPE_1__* list; } ;
struct TYPE_11__ {TYPE_4__ ts; TYPE_2__ pes; } ;
typedef  TYPE_5__ hb_stream_t ;
struct TYPE_9__ {int pes_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  stream_kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  U ; 

__attribute__((used)) static kind_t FUNC0( hb_stream_t * stream, int idx )
{
    if ( stream->ts.list[idx].pes_list != -1 )
    {
        // Returns kind for the first pes substream in the pes list
        // All substreams in a TS stream are the same kind.
        return stream->pes.list[stream->ts.list[idx].pes_list].stream_kind;
    }
    else
    {
        return U;
    }
}
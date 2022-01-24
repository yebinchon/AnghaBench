#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_stream_t ;
struct TYPE_9__ {int header_len; int /*<<< orphan*/  scr; } ;
typedef  TYPE_1__ hb_pes_info_t ;
struct TYPE_10__ {int pos; } ;
typedef  TYPE_2__ bitbuf_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(
    hb_stream_t   *stream,
    bitbuf_t      *bb,
    hb_pes_info_t *pes_info )
{
    if ( FUNC0(bb) < 12)
    {
        return 0;
    }

    FUNC2(bb, 8 * 4);
    int mark = FUNC1(bb, 2);

    if ( mark == 0x00 )
    {
        // mpeg1 pack
        FUNC2(bb, 2); // marker
    }
    pes_info->scr = FUNC3( bb );

    if ( mark == 0x00 )
    {
        FUNC2(bb, 24);
        pes_info->header_len = (bb->pos >> 3);
    }
    else
    {
        FUNC2(bb, 39);
        int stuffing = FUNC1(bb, 3);
        pes_info->header_len = stuffing;
        pes_info->header_len += (bb->pos >> 3);
    }
    return 1;
}
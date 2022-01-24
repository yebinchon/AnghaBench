#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_12__ {int max_plane; int width; int height; int fmt; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; } ;
struct TYPE_13__ {TYPE_3__ f; TYPE_2__ s; } ;
typedef  TYPE_4__ hb_buffer_t ;
struct TYPE_14__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_10__ {int plane; } ;
typedef  TYPE_5__ AVPixFmtDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_BUF ; 
 TYPE_5__* FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (int,int,int) ; 
 int FUNC4 (int,int,int) ; 

hb_buffer_t * FUNC5( int pix_fmt, int width, int height )
{
    const AVPixFmtDescriptor * desc = FUNC0(pix_fmt);
    hb_buffer_t              * buf;
    uint8_t                    has_plane[4] = {0,};
    int                        ii, pp, max_plane = 0;

    if (desc == NULL)
    {
        return NULL;
    }

    int size = 0;
    for (ii = 0; ii < desc->nb_components; ii++)
    {
        pp    = desc->comp[ii].plane;
        if (pp > max_plane)
        {
            max_plane = pp;
        }
        if (!has_plane[pp])
        {
            has_plane[pp] = 1;
            size += FUNC4( pix_fmt, width, pp ) *
                    FUNC3( pix_fmt, height, pp );
        }
    }

    buf = FUNC1(size);

    if( buf == NULL )
        return NULL;

    buf->f.max_plane = max_plane;
    buf->s.type = FRAME_BUF;
    buf->f.width = width;
    buf->f.height = height;
    buf->f.fmt = pix_fmt;

    FUNC2(buf);
    return buf;
}
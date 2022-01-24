#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
struct TYPE_5__ {int max_plane; } ;
struct TYPE_7__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef  TYPE_3__ hb_buffer_t ;
struct TYPE_6__ {int stride; int width; int height; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC10( hb_handle_t * h, int title, int preview, hb_buffer_t *buf )
{
    FILE * file;
    char * filename;
    char   reason[80];

    filename = FUNC7("%d_%d_%d", FUNC6(h),
                                         title, preview );

    file = FUNC5(filename, "wb");
    if (file == NULL)
    {
        if (FUNC9(errno, reason, 79) != 0)
            FUNC8(reason, "unknown -- strerror_r() failed");

        FUNC4("hb_save_preview: Failed to open %s (reason: %s)",
                 filename, reason);
        FUNC2(filename);
        return -1;
    }

    int pp, hh;
    for( pp = 0; pp <= buf->f.max_plane; pp++ )
    {
        uint8_t *data = buf->plane[pp].data;
        int stride = buf->plane[pp].stride;
        int w = buf->plane[pp].width;
        int h = buf->plane[pp].height;

        for( hh = 0; hh < h; hh++ )
        {
            if (FUNC3( data, w, 1, file ) < w)
            {
                if (FUNC1(file))
                {
                    if (FUNC9(errno, reason, 79) != 0)
                        FUNC8(reason, "unknown -- strerror_r() failed");

                    FUNC4( "hb_save_preview: Failed to write line %d to %s "
                              "(reason: %s). Preview will be incomplete.",
                              hh, filename, reason );
                    goto done;
                }
            }
            data += stride;
        }
    }

done:
    FUNC2(filename);
    FUNC0( file );

    return 0;
}
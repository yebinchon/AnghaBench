#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_10__ {TYPE_1__ geometry; int /*<<< orphan*/  index; } ;
typedef  TYPE_3__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
struct TYPE_11__ {TYPE_2__* plane; } ;
typedef  TYPE_4__ hb_buffer_t ;
struct TYPE_9__ {int stride; int width; int height; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

hb_buffer_t * FUNC11(hb_handle_t * h, hb_title_t *title, int preview)
{
    FILE * file;
    char * filename;
    char   reason[80];

    filename = FUNC8("%d_%d_%d", FUNC7(h),
                                         title->index, preview);

    file = FUNC5(filename, "rb");
    if (file == NULL)
    {
        if (FUNC10(errno, reason, 79) != 0)
            FUNC9(reason, "unknown -- strerror_r() failed");

        FUNC4("hb_read_preview: Failed to open %s (reason: %s)",
                 filename, reason);
        FUNC3(filename);
        return NULL;
    }

    hb_buffer_t * buf;
    buf = FUNC6(AV_PIX_FMT_YUV420P,
                               title->geometry.width, title->geometry.height);

    if (!buf)
        goto done;

    int pp, hh;
    for (pp = 0; pp < 3; pp++)
    {
        uint8_t *data = buf->plane[pp].data;
        int stride = buf->plane[pp].stride;
        int w = buf->plane[pp].width;
        int h = buf->plane[pp].height;

        for (hh = 0; hh < h; hh++)
        {
            if (FUNC2(data, w, 1, file) < w)
            {
                if (FUNC1(file))
                {
                    if (FUNC10(errno, reason, 79) != 0)
                        FUNC9(reason, "unknown -- strerror_r() failed");

                    FUNC4("hb_read_preview: Failed to read line %d from %s "
                             "(reason: %s). Preview will be incomplete.",
                             hh, filename, reason );
                    goto done;
                }
            }
            data += stride;
        }
    }

done:
    FUNC3(filename);
    FUNC0(file);

    return buf;
}
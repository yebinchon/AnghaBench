#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  rgba_map ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int log2_chroma_w; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC2 (size_t,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (size_t**) ; 
 int FUNC7 (TYPE_1__ const*) ; 
 size_t* FUNC8 (int) ; 
 size_t* FUNC9 (int,int) ; 
 TYPE_1__* FUNC10 (int) ; 
 scalar_t__ FUNC11 (size_t*,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC13 (size_t*,size_t,int) ; 

int FUNC14(uint8_t *line[4], int pixel_step[4], int w, uint8_t dst_color[4],
                            enum AVPixelFormat pix_fmt, uint8_t rgba_color[4],
                            int *is_packed_rgba, uint8_t rgba_map_ptr[4])
{
    uint8_t rgba_map[4] = {0};
    int i;
    const AVPixFmtDescriptor *pix_desc = FUNC10(pix_fmt);
    int hsub;

    FUNC5(pix_desc);

    hsub = pix_desc->log2_chroma_w;

    *is_packed_rgba = FUNC11(rgba_map, pix_fmt) >= 0;

    if (*is_packed_rgba) {
        pixel_step[0] = (FUNC7(pix_desc))>>3;
        for (i = 0; i < 4; i++)
            dst_color[rgba_map[i]] = rgba_color[i];

        line[0] = FUNC9(w, pixel_step[0]);
        if (!line[0])
            return FUNC0(ENOMEM);
        for (i = 0; i < w; i++)
            FUNC12(line[0] + i * pixel_step[0], dst_color, pixel_step[0]);
        if (rgba_map_ptr)
            FUNC12(rgba_map_ptr, rgba_map, sizeof(rgba_map[0]) * 4);
    } else {
        int plane;

        dst_color[0] = FUNC4(rgba_color[0], rgba_color[1], rgba_color[2]);
        dst_color[1] = FUNC2(rgba_color[0], rgba_color[1], rgba_color[2], 0);
        dst_color[2] = FUNC3(rgba_color[0], rgba_color[1], rgba_color[2], 0);
        dst_color[3] = rgba_color[3];

        for (plane = 0; plane < 4; plane++) {
            int line_size;
            int hsub1 = (plane == 1 || plane == 2) ? hsub : 0;

            pixel_step[plane] = 1;
            line_size = FUNC1(w, hsub1) * pixel_step[plane];
            line[plane] = FUNC8(line_size);
            if (!line[plane]) {
                while(plane && line[plane-1])
                    FUNC6(&line[--plane]);
                return FUNC0(ENOMEM);
            }
            FUNC13(line[plane], dst_color[plane], line_size);
        }
    }

    return 0;
}
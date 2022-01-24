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
typedef  int /*<<< orphan*/  slice_buffer ;
typedef  int /*<<< orphan*/  DWTCompose ;

/* Variables and functions */
#define  DWT_53 129 
#define  DWT_97 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

void FUNC2(DWTCompose *cs, slice_buffer *sb, int width,
                                   int height, int stride_line, int type,
                                   int decomposition_count)
{
    int level;
    for (level = decomposition_count - 1; level >= 0; level--) {
        switch (type) {
        case DWT_97:
            FUNC1(cs + level, sb, height >> level,
                                             stride_line << level);
            break;
        case DWT_53:
            FUNC0(cs + level, sb, height >> level,
                                             stride_line << level);
            break;
        }
    }
}
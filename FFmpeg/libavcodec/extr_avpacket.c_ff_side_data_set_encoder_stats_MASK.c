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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_QUALITY_STATS ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(AVPacket *pkt, int quality, int64_t *error, int error_count, int pict_type)
{
    uint8_t *side_data;
    int side_data_size;
    int i;

    side_data = FUNC3(pkt, AV_PKT_DATA_QUALITY_STATS, &side_data_size);
    if (!side_data) {
        side_data_size = 4+4+8*error_count;
        side_data = FUNC4(pkt, AV_PKT_DATA_QUALITY_STATS,
                                            side_data_size);
    }

    if (!side_data || side_data_size < 4+4+8*error_count)
        return FUNC0(ENOMEM);

    FUNC1(side_data   , quality  );
    side_data[4] = pict_type;
    side_data[5] = error_count;
    for (i = 0; i<error_count; i++)
        FUNC2(side_data+8 + 8*i , error[i]);

    return 0;
}
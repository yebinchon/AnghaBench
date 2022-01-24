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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
typedef  int /*<<< orphan*/  AVStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

uint8_t *FUNC3(AVStream *st, enum AVPacketSideDataType type,
                                 int size)
{
    int ret;
    uint8_t *data = FUNC1(size);

    if (!data)
        return NULL;

    ret = FUNC2(st, type, data, size);
    if (ret < 0) {
        FUNC0(&data);
        return NULL;
    }

    return data;
}
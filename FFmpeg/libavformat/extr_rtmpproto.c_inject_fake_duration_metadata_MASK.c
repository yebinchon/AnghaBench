#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int flv_size; int /*<<< orphan*/  duration; int /*<<< orphan*/ * flv_data; } ;
typedef  TYPE_1__ RTMPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AMF_DATA_TYPE_MIXEDARRAY ; 
 int /*<<< orphan*/  AMF_DATA_TYPE_NUMBER ; 
 int /*<<< orphan*/  AMF_DATA_TYPE_STRING ; 
 int /*<<< orphan*/  AMF_END_OF_OBJECT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FLV_TAG_TYPE_META ; 
 int RTMP_HEADER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(RTMPContext *rt)
{
    // We need to insert the metadata packet directly after the FLV
    // header, i.e. we need to move all other already read data by the
    // size of our fake metadata packet.

    uint8_t* p;
    // Keep old flv_data pointer
    uint8_t* old_flv_data = rt->flv_data;
    // Allocate a new flv_data pointer with enough space for the additional package
    if (!(rt->flv_data = FUNC3(rt->flv_size + 55))) {
        rt->flv_data = old_flv_data;
        return FUNC0(ENOMEM);
    }

    // Copy FLV header
    FUNC10(rt->flv_data, old_flv_data, 13);
    // Copy remaining packets
    FUNC10(rt->flv_data + 13 + 55, old_flv_data + 13, rt->flv_size - 13);
    // Increase the size by the injected packet
    rt->flv_size += 55;
    // Delete the old FLV data
    FUNC2(&old_flv_data);

    p = rt->flv_data + 13;
    FUNC9(&p, FLV_TAG_TYPE_META);
    FUNC5(&p, 40); // size of data part (sum of all parts below)
    FUNC5(&p, 0);  // timestamp
    FUNC6(&p, 0);  // reserved

    // first event name as a string
    FUNC9(&p, AMF_DATA_TYPE_STRING);
    // "onMetaData" as AMF string
    FUNC4(&p, 10);
    FUNC8(&p, "onMetaData", 10);

    // mixed array (hash) with size and string/type/data tuples
    FUNC9(&p, AMF_DATA_TYPE_MIXEDARRAY);
    FUNC6(&p, 1); // metadata_count

    // "duration" as AMF string
    FUNC4(&p, 8);
    FUNC8(&p, "duration", 8);
    FUNC9(&p, AMF_DATA_TYPE_NUMBER);
    FUNC7(&p, FUNC1(rt->duration));

    // Finalise object
    FUNC4(&p, 0); // Empty string
    FUNC9(&p, AMF_END_OF_OBJECT);
    FUNC6(&p, 40 + RTMP_HEADER); // size of data part (sum of all parts above)

    return 0;
}
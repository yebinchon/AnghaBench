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
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC9(AVPacket* avpkt)
{
    const uint8_t *data_name = NULL;
    int ret = 0, bytes;
    uint8_t *extra_data = NULL;


    /* get side_data_name string */
    data_name = FUNC4(AV_PKT_DATA_NEW_EXTRADATA);

    /* Allocate a memory bloc */
    bytes = FUNC8(data_name);

    if(!(extra_data = FUNC2(bytes))){
        ret = FUNC0(ENOMEM);
        FUNC6(stderr, "Error occurred: %s\n", FUNC1(ret));
        FUNC5(1);
    }
    /* copy side_data_name to extra_data array */
    FUNC7(extra_data, data_name, bytes);

    /* create side data for AVPacket */
    ret = FUNC3(avpkt, AV_PKT_DATA_NEW_EXTRADATA,
                                        extra_data, bytes);
    if(ret < 0){
        FUNC6(stderr,
                "Error occurred in av_packet_add_side_data: %s\n",
                FUNC1(ret));
    }

    return ret;
}
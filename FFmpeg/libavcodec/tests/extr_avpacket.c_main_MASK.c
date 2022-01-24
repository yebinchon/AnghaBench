#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int FUNC9(void)
{
    AVPacket avpkt;
    AVPacket *avpkt_clone = NULL;
    int ret = 0;

    if(FUNC7(&avpkt) < 0){
        FUNC8("failed to initialize variables\n");
        return 1;
    }
    /* test av_packet_clone*/
    avpkt_clone = FUNC3(&avpkt);

    if(!avpkt_clone) {
        FUNC1(NULL, AV_LOG_ERROR,"av_packet_clone failed to clone AVPacket\n");
        return 1;
    }
    /*test av_grow_packet*/
    if(FUNC0(avpkt_clone, 20) < 0){
        FUNC1(NULL, AV_LOG_ERROR, "av_grow_packet failed\n");
        return 1;
    }
    if(FUNC0(avpkt_clone, INT_MAX) == 0){
        FUNC8( "av_grow_packet failed to return error "
                "when \"grow_by\" parameter is too large.\n" );
        ret = 1;
    }
    /* test size error check in av_new_packet*/
    if(FUNC2(avpkt_clone, INT_MAX) == 0){
        FUNC8( "av_new_packet failed to return error "
                "when \"size\" parameter is too large.\n" );
        ret = 1;
    }
    /*test size error check in av_packet_from_data*/
    if(FUNC5(avpkt_clone, avpkt_clone->data, INT_MAX) == 0){
        FUNC8("av_packet_from_data failed to return error "
                "when \"size\" parameter is too large.\n" );
        ret = 1;
    }
    /*clean up*/
    FUNC4(&avpkt_clone);
    FUNC6(&avpkt);


    return ret;
}
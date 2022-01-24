#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  header_parsed; } ;
struct TYPE_7__ {int /*<<< orphan*/  chunk_seq; TYPE_2__ mms; } ;
typedef  TYPE_1__ MMSHContext ;
typedef  TYPE_2__ MMSContext ;
typedef  int ChunkType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  CHUNK_TYPE_DATA 130 
#define  CHUNK_TYPE_END 129 
#define  CHUNK_TYPE_STREAM_CHANGE 128 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_1__*,int*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(MMSHContext *mmsh)
{
    MMSContext *mms = &mmsh->mms;
    int res, len = 0;
    ChunkType chunk_type;
    chunk_type = FUNC2(mmsh, &len);

    switch (chunk_type) {
    case CHUNK_TYPE_END:
        mmsh->chunk_seq = 0;
        FUNC1(NULL, AV_LOG_ERROR, "Stream ended!\n");
        return FUNC0(EIO);
    case CHUNK_TYPE_STREAM_CHANGE:
        mms->header_parsed = 0;
        if ((res = FUNC3(mmsh))) {
            FUNC1(NULL, AV_LOG_ERROR,"Stream changed! Failed to get new header!\n");
            return res;
        }
        break;
    case CHUNK_TYPE_DATA:
        return FUNC4(mmsh, len);
    default:
        FUNC1(NULL, AV_LOG_ERROR, "Recv other type packet %d\n", chunk_type);
        return AVERROR_INVALIDDATA;
    }
    return 0;
}
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
struct TYPE_3__ {int codec_id; int extradata_size; int* extradata; } ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
#define  AV_CODEC_ID_AAC 129 
#define  AV_CODEC_ID_H264 128 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

__attribute__((used)) static void FUNC3(AVCodecParameters *codecpar, char *str, int size)
{
    switch (codecpar->codec_id) {
    case AV_CODEC_ID_H264:
        FUNC2(str, size, "avc1");
        if (codecpar->extradata_size >= 4 && codecpar->extradata[0] == 1) {
            FUNC1(str, size, ".%02x%02x%02x",
                        codecpar->extradata[1], codecpar->extradata[2],
                        codecpar->extradata[3]);
        }
        break;
    case AV_CODEC_ID_AAC:
        FUNC2(str, size, "mp4a.40"); // 0x40 is the mp4 object type for AAC
        if (codecpar->extradata_size >= 2) {
            int aot = codecpar->extradata[0] >> 3;
            if (aot == 31)
                aot = ((FUNC0(codecpar->extradata) >> 5) & 0x3f) + 32;
            FUNC1(str, size, ".%d", aot);
        }
        break;
    }
}
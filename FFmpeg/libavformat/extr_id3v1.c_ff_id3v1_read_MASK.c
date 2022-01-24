#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_9__ {int seekable; } ;
struct TYPE_8__ {TYPE_4__* pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int ID3v1_TAG_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC5(AVFormatContext *s)
{
    int ret;
    uint8_t buf[ID3v1_TAG_SIZE];
    int64_t filesize, position = FUNC3(s->pb);

    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        /* XXX: change that */
        filesize = FUNC2(s->pb);
        if (filesize > 128) {
            FUNC1(s->pb, filesize - 128, SEEK_SET);
            ret = FUNC0(s->pb, buf, ID3v1_TAG_SIZE);
            if (ret == ID3v1_TAG_SIZE) {
                FUNC4(s, buf);
            }
            FUNC1(s->pb, position, SEEK_SET);
        }
    }
}
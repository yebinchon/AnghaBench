#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {void* frames; void* header_filesize; } ;
typedef  TYPE_1__ MP3DecContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, AVStream *st, int64_t base)
{
    uint32_t v;
    MP3DecContext *mp3 = s->priv_data;

    /* Check for VBRI tag (always 32 bytes after end of mpegaudio header) */
    FUNC3(s->pb, base + 4 + 32, SEEK_SET);
    v = FUNC2(s->pb);
    if (v == FUNC0('V', 'B', 'R', 'I')) {
        /* Check tag version */
        if (FUNC1(s->pb) == 1) {
            /* skip delay and quality */
            FUNC4(s->pb, 4);
            mp3->header_filesize = FUNC2(s->pb);
            mp3->frames = FUNC2(s->pb);
        }
    }
}
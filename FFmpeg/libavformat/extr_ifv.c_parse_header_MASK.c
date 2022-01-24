#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  long long uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  metadata; TYPE_1__* priv_data; } ;
struct TYPE_5__ {long long sample_rate; int is_audio_present; long long total_vframes; long long total_aframes; void* height; void* width; } ;
typedef  TYPE_1__ IFVContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 long long FUNC0 (char,char,char,unsigned char) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,long long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,long long) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    IFVContext *ifv = s->priv_data;
    uint32_t aud_magic;
    uint32_t vid_magic;

    FUNC3(s->pb, 0x34);
    FUNC4(&s->metadata, "creation_time", FUNC2(s->pb) * 1000000LL);
    FUNC3(s->pb, 0x24);

    ifv->width = FUNC1(s->pb);
    ifv->height = FUNC1(s->pb);

    FUNC3(s->pb, 0x8);
    vid_magic = FUNC2(s->pb);

    if (vid_magic != FUNC0('H','2','6','4'))
        FUNC5(s, "Unknown video codec %x", vid_magic);

    FUNC3(s->pb, 0x2c);
    ifv->sample_rate = FUNC2(s->pb);
    aud_magic = FUNC2(s->pb);

    if (aud_magic == FUNC0('G','R','A','W')) {
        ifv->is_audio_present = 1;
    } else if (aud_magic == FUNC0('P','C','M','U')) {
        ifv->is_audio_present = 0;
    } else {
        FUNC5(s, "Unknown audio codec %x", aud_magic);
    }

    FUNC3(s->pb, 0x44);
    ifv->total_vframes = FUNC2(s->pb);
    ifv->total_aframes = FUNC2(s->pb);

    return 0;
}
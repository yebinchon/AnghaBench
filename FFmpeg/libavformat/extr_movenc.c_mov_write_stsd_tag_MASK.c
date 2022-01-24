#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {TYPE_1__* par; } ;
struct TYPE_10__ {scalar_t__ codec_type; scalar_t__ codec_tag; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = FUNC1(pb);
    int ret = 0;
    FUNC2(pb, 0); /* size */
    FUNC3(pb, "stsd");
    FUNC2(pb, 0); /* version & flags */
    FUNC2(pb, 1); /* entry count */
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO)
        ret = FUNC9(s, pb, mov, track);
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        ret = FUNC4(s, pb, mov, track);
    else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE)
        ret = FUNC7(pb, track);
    else if (track->par->codec_tag == FUNC0('r','t','p',' '))
        ret = FUNC6(pb, track);
    else if (track->par->codec_tag == FUNC0('t','m','c','d'))
        ret = FUNC8(pb, track);
    else if (track->par->codec_tag == FUNC0('g','p','m','d'))
        ret = FUNC5(pb, track);

    if (ret < 0)
        return ret;

    return FUNC10(pb, pos);
}
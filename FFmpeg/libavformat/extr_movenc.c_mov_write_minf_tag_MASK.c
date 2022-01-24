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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {scalar_t__ tag; scalar_t__ mode; TYPE_1__* par; } ;
struct TYPE_7__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ MOVTrack ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *s, AVIOContext *pb, MOVMuxContext *mov, MOVTrack *track)
{
    int64_t pos = FUNC1(pb);
    int ret;

    FUNC2(pb, 0); /* size */
    FUNC3(pb, "minf");
    if (track->par->codec_type == AVMEDIA_TYPE_VIDEO)
        FUNC12(pb);
    else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO)
        FUNC10(pb);
    else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE) {
        if (track->tag == FUNC0('t','e','x','t') || FUNC4(track)) {
            FUNC6(pb, track);
        } else {
            FUNC9(pb);
        }
    } else if (track->tag == FUNC0('r','t','p',' ')) {
        FUNC8(pb);
    } else if (track->tag == FUNC0('t','m','c','d')) {
        if (track->mode != MODE_MOV)
            FUNC9(pb);
        else
            FUNC6(pb, track);
    } else if (track->tag == FUNC0('g','p','m','d')) {
        FUNC6(pb, track);
    }
    if (track->mode == MODE_MOV) /* ISO 14496-12 8.4.3.1 specifies hdlr only within mdia or meta boxes */
        FUNC7(s, pb, NULL);
    FUNC5(pb);
    if ((ret = FUNC11(s, pb, mov, track)) < 0)
        return ret;
    return FUNC13(pb, pos);
}
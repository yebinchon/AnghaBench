#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* oformat; int /*<<< orphan*/  url; } ;
struct TYPE_12__ {scalar_t__ mode; TYPE_2__* par; int /*<<< orphan*/  st; } ;
struct TYPE_11__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_tag; } ;
struct TYPE_10__ {int /*<<< orphan*/  codec_tag; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ MODE_IPOD ; 
 scalar_t__ MODE_MOV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  codec_cover_image_tags ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(AVFormatContext *s, MOVTrack *track)
{
    if (FUNC3(track->st))
        return FUNC2(codec_cover_image_tags, track->par->codec_id);

    if (track->mode == MODE_IPOD)
        if (!FUNC1(s->url, "m4a") &&
            !FUNC1(s->url, "m4v") &&
            !FUNC1(s->url, "m4b"))
            FUNC0(s, AV_LOG_WARNING, "Warning, extension is not .m4a nor .m4v "
                   "Quicktime/Ipod might not play the file\n");

    if (track->mode == MODE_MOV) {
        return FUNC4(s, track);
    } else
        return FUNC5(s->oformat->codec_tag, track->par->codec_tag,
                                  track->par->codec_id);
}
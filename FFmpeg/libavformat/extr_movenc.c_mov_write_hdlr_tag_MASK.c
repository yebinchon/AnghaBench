#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_17__ {char* value; } ;
struct TYPE_16__ {TYPE_4__* priv_data; } ;
struct TYPE_15__ {scalar_t__ empty_hdlr_name; } ;
struct TYPE_14__ {scalar_t__ mode; scalar_t__ tag; TYPE_2__* st; TYPE_1__* par; } ;
struct TYPE_13__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_12__ {scalar_t__ codec_type; scalar_t__ codec_tag; } ;
typedef  TYPE_3__ MOVTrack ;
typedef  TYPE_4__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVDictionaryEntry ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (char,char,char,char) ; 
 scalar_t__ MODE_MOV ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, AVIOContext *pb, MOVTrack *track)
{
    MOVMuxContext *mov = s->priv_data;
    const char *hdlr, *descr = NULL, *hdlr_type = NULL;
    int64_t pos = FUNC4(pb);

    hdlr      = "dhlr";
    hdlr_type = "url ";
    descr     = "DataHandler";

    if (track) {
        hdlr = (track->mode == MODE_MOV) ? "mhlr" : "\0\0\0\0";
        if (track->par->codec_type == AVMEDIA_TYPE_VIDEO) {
            hdlr_type = "vide";
            descr     = "VideoHandler";
        } else if (track->par->codec_type == AVMEDIA_TYPE_AUDIO) {
            hdlr_type = "soun";
            descr     = "SoundHandler";
        } else if (track->par->codec_type == AVMEDIA_TYPE_SUBTITLE) {
            if (FUNC9(track)) {
                hdlr_type = "clcp";
                descr = "ClosedCaptionHandler";
            } else {
                if (track->tag == FUNC0('t','x','3','g')) {
                    hdlr_type = "sbtl";
                } else if (track->tag == FUNC0('m','p','4','s')) {
                    hdlr_type = "subp";
                } else {
                    hdlr_type = "text";
                }
            descr = "SubtitleHandler";
            }
        } else if (track->par->codec_tag == FUNC0('r','t','p',' ')) {
            hdlr_type = "hint";
            descr     = "HintHandler";
        } else if (track->par->codec_tag == FUNC0('t','m','c','d')) {
            hdlr_type = "tmcd";
            descr = "TimeCodeHandler";
        } else if (track->par->codec_tag == FUNC0('g','p','m','d')) {
            hdlr_type = "meta";
            descr = "GoPro MET"; // GoPro Metadata
        } else {
            FUNC3(s, AV_LOG_WARNING,
                   "Unknown hldr_type for %s, writing dummy values\n",
                   FUNC2(track->par->codec_tag));
        }
        if (track->st) {
            // hdlr.name is used by some players to identify the content title
            // of the track. So if an alternate handler description is
            // specified, use it.
            AVDictionaryEntry *t;
            t = FUNC1(track->st->metadata, "handler_name", NULL, 0);
            if (t && FUNC12(t->value))
                descr = t->value;
        }
    }

    if (mov->empty_hdlr_name) /* expressly allowed by QTFF and not prohibited in ISO 14496-12 8.4.3.3 */
        descr = "";

    FUNC6(pb, 0); /* size */
    FUNC8(pb, "hdlr");
    FUNC6(pb, 0); /* Version & flags */
    FUNC7(pb, hdlr, 4); /* handler */
    FUNC8(pb, hdlr_type); /* handler type */
    FUNC6(pb, 0); /* reserved */
    FUNC6(pb, 0); /* reserved */
    FUNC6(pb, 0); /* reserved */
    if (!track || track->mode == MODE_MOV)
        FUNC5(pb, FUNC10(descr)); /* pascal string */
    FUNC7(pb, descr, FUNC10(descr)); /* handler description */
    if (track && track->mode != MODE_MOV)
        FUNC5(pb, 0); /* c string */
    return FUNC11(pb, pos);
}
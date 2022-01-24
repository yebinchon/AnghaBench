#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
struct TYPE_14__ {TYPE_8__* oformat; int /*<<< orphan*/  url; } ;
struct TYPE_13__ {int stream_copy; int encoding_needed; TYPE_4__* enc; TYPE_10__* st; int /*<<< orphan*/  index; int /*<<< orphan*/  file_index; } ;
struct TYPE_12__ {int codec_type; int /*<<< orphan*/  codec_id; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
typedef  TYPE_2__ OutputStream ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_ENCODER_NOT_FOUND ; 
 int AVMEDIA_TYPE_AUDIO ; 
 int AVMEDIA_TYPE_SUBTITLE ; 
 int AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_3__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  codec_names ; 
 TYPE_4__* FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  str ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(OptionsContext *o, AVFormatContext *s, OutputStream *ost)
{
    enum AVMediaType type = ost->st->codecpar->codec_type;
    char *codec_name = NULL;

    if (type == AVMEDIA_TYPE_VIDEO || type == AVMEDIA_TYPE_AUDIO || type == AVMEDIA_TYPE_SUBTITLE) {
        FUNC0(codec_names, str, codec_name, s, ost->st);
        if (!codec_name) {
            ost->st->codecpar->codec_id = FUNC1(s->oformat, NULL, s->url,
                                                         NULL, ost->st->codecpar->codec_type);
            ost->enc = FUNC3(ost->st->codecpar->codec_id);
            if (!ost->enc) {
                FUNC2(NULL, AV_LOG_FATAL, "Automatic encoder selection failed for "
                       "output stream #%d:%d. Default encoder for format %s (codec %s) is "
                       "probably disabled. Please choose an encoder manually.\n",
                       ost->file_index, ost->index, s->oformat->name,
                       FUNC4(ost->st->codecpar->codec_id));
                return AVERROR_ENCODER_NOT_FOUND;
            }
        } else if (!FUNC6(codec_name, "copy"))
            ost->stream_copy = 1;
        else {
            ost->enc = FUNC5(codec_name, ost->st->codecpar->codec_type, 1);
            ost->st->codecpar->codec_id = ost->enc->id;
        }
        ost->encoding_needed = !ost->stream_copy;
    } else {
        /* no encoding supported for other media types */
        ost->stream_copy     = 1;
        ost->encoding_needed = 0;
    }

    return 0;
}
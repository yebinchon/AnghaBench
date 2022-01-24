#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_11__ {int nb_streams; TYPE_2__** streams; } ;
struct TYPE_10__ {scalar_t__ discard; TYPE_1__* codecpar; } ;
struct TYPE_9__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVDISCARD_ALL ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (TYPE_3__*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,char const*) ; 
 int FUNC4 (char const*,char*,char*,int*,char*) ; 

__attribute__((used)) static AVStream *FUNC5(void *log, AVFormatContext *avf, const char *spec)
{
    int i, ret, already = 0, stream_id = -1;
    char type_char[2], dummy;
    AVStream *found = NULL;
    enum AVMediaType type;

    ret = FUNC4(spec, "d%1[av]%d%c", type_char, &stream_id, &dummy);
    if (ret >= 1 && ret <= 2) {
        type = type_char[0] == 'v' ? AVMEDIA_TYPE_VIDEO : AVMEDIA_TYPE_AUDIO;
        ret = FUNC0(avf, type, stream_id, -1, NULL, 0);
        if (ret < 0) {
            FUNC2(log, AV_LOG_ERROR, "No %s stream with index '%d' found\n",
                   FUNC1(type), stream_id);
            return NULL;
        }
        return avf->streams[ret];
    }
    for (i = 0; i < avf->nb_streams; i++) {
        ret = FUNC3(avf, avf->streams[i], spec);
        if (ret < 0) {
            FUNC2(log, AV_LOG_ERROR,
                   "Invalid stream specifier \"%s\"\n", spec);
            return NULL;
        }
        if (!ret)
            continue;
        if (avf->streams[i]->discard != AVDISCARD_ALL) {
            already++;
            continue;
        }
        if (found) {
            FUNC2(log, AV_LOG_WARNING,
                   "Ambiguous stream specifier \"%s\", using #%d\n", spec, i);
            break;
        }
        found = avf->streams[i];
    }
    if (!found) {
        FUNC2(log, AV_LOG_WARNING, "Stream specifier \"%s\" %s\n", spec,
               already ? "matched only already used streams" :
                         "did not match any stream");
        return NULL;
    }
    if (found->codecpar->codec_type != AVMEDIA_TYPE_VIDEO &&
        found->codecpar->codec_type != AVMEDIA_TYPE_AUDIO) {
        FUNC2(log, AV_LOG_ERROR, "Stream specifier \"%s\" matched a %s stream,"
               "currently unsupported by libavfilter\n", spec,
               FUNC1(found->codecpar->codec_type));
        return NULL;
    }
    return found;
}
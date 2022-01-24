#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_17__ {int gl_pathc; } ;
struct TYPE_19__ {int den; int num; } ;
struct TYPE_21__ {char* path; int img_number; int is_pipe; int ts_from_file; int use_glob; int img_first; int img_last; int /*<<< orphan*/  split_planes; scalar_t__ pattern_type; TYPE_10__ globstate; scalar_t__ start_number_range; scalar_t__ start_number; scalar_t__ height; scalar_t__ width; TYPE_2__ framerate; scalar_t__ img_count; scalar_t__ pixel_format; } ;
typedef  TYPE_4__ VideoDemuxData ;
struct TYPE_25__ {scalar_t__ video_codec_id; scalar_t__ audio_codec_id; int flags; scalar_t__ pb; int /*<<< orphan*/  url; TYPE_1__* iformat; int /*<<< orphan*/  ctx_flags; TYPE_4__* priv_data; } ;
struct TYPE_24__ {scalar_t__ read_header; scalar_t__ (* read_probe ) (TYPE_6__*) ;int flags; scalar_t__ raw_codec_id; } ;
struct TYPE_23__ {char* buf; int buf_size; int /*<<< orphan*/  filename; int /*<<< orphan*/  member_0; } ;
struct TYPE_22__ {int duration; TYPE_3__* codecpar; scalar_t__ start_time; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_20__ {scalar_t__ codec_type; scalar_t__ codec_id; int format; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_18__ {int flags; scalar_t__ raw_codec_id; } ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVProbeData ;
typedef  TYPE_7__ AVInputFormat ;
typedef  TYPE_8__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int AVFMT_FLAG_CUSTOM_IO ; 
 int AVFMT_NOFILE ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 scalar_t__ AVPROBE_PADDING_SIZE ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 scalar_t__ AV_CODEC_ID_ALIAS_PIX ; 
 scalar_t__ AV_CODEC_ID_LJPEG ; 
 scalar_t__ AV_CODEC_ID_MJPEG ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int GLOB_BRACE ; 
 int GLOB_NOCHECK ; 
 int GLOB_NOMAGIC ; 
 scalar_t__ PT_DEFAULT ; 
 scalar_t__ PT_GLOB ; 
 scalar_t__ PT_GLOB_SEQUENCE ; 
 scalar_t__ PT_NONE ; 
 scalar_t__ PT_SEQUENCE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_7__* FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC10 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int,int,int) ; 
 scalar_t__ FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,char**,int) ; 
 scalar_t__ FUNC16 (scalar_t__,int*,int*,char*,scalar_t__,scalar_t__) ; 
 int FUNC17 (char*,int,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC20 (char*,char) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (TYPE_6__*) ; 

int FUNC23(AVFormatContext *s1)
{
    VideoDemuxData *s = s1->priv_data;
    int first_index = 1, last_index = 1;
    AVStream *st;
    enum AVPixelFormat pix_fmt = AV_PIX_FMT_NONE;

    s1->ctx_flags |= AVFMTCTX_NOHEADER;

    st = FUNC10(s1, NULL);
    if (!st) {
        return FUNC0(ENOMEM);
    }

    if (s->pixel_format &&
        (pix_fmt = FUNC4(s->pixel_format)) == AV_PIX_FMT_NONE) {
        FUNC5(s1, AV_LOG_ERROR, "No such pixel format: %s.\n",
               s->pixel_format);
        return FUNC0(EINVAL);
    }

    FUNC9(s->path, s1->url, sizeof(s->path));
    s->img_number = 0;
    s->img_count  = 0;

    /* find format */
    if (s1->iformat->flags & AVFMT_NOFILE)
        s->is_pipe = 0;
    else {
        s->is_pipe       = 1;
        st->need_parsing = AVSTREAM_PARSE_FULL;
    }

    if (s->ts_from_file == 2) {
#if !HAVE_STRUCT_STAT_ST_MTIM_TV_NSEC
        FUNC5(s1, AV_LOG_ERROR, "POSIX.1-2008 not supported, nanosecond file timestamps unavailable\n");
        return FUNC0(ENOSYS);
#endif
        FUNC13(st, 64, 1, 1000000000);
    } else if (s->ts_from_file)
        FUNC13(st, 64, 1, 1);
    else
        FUNC13(st, 64, s->framerate.den, s->framerate.num);

    if (s->width && s->height) {
        st->codecpar->width  = s->width;
        st->codecpar->height = s->height;
    }

    if (!s->is_pipe) {
        if (s->pattern_type == PT_DEFAULT) {
            if (s1->pb) {
                s->pattern_type = PT_NONE;
            } else
                s->pattern_type = PT_GLOB_SEQUENCE;
        }

        if (s->pattern_type == PT_GLOB_SEQUENCE) {
        s->use_glob = FUNC18(s->path);
        if (s->use_glob) {
#if HAVE_GLOB
            char *p = s->path, *q, *dup;
            int gerr;
#endif

            FUNC5(s1, AV_LOG_WARNING, "Pattern type 'glob_sequence' is deprecated: "
                   "use pattern_type 'glob' instead\n");
#if HAVE_GLOB
            dup = q = av_strdup(p);
            while (*q) {
                /* Do we have room for the next char and a \ insertion? */
                if ((p - s->path) >= (sizeof(s->path) - 2))
                  break;
                if (*q == '%' && strspn(q + 1, "%*?[]{}"))
                    ++q;
                else if (strspn(q, "\\*?[]{}"))
                    *p++ = '\\';
                *p++ = *q++;
            }
            *p = 0;
            av_free(dup);

            gerr = glob(s->path, GLOB_NOCHECK|GLOB_BRACE|GLOB_NOMAGIC, NULL, &s->globstate);
            if (gerr != 0) {
                return AVERROR(ENOENT);
            }
            first_index = 0;
            last_index = s->globstate.gl_pathc - 1;
#endif
        }
        }
        if ((s->pattern_type == PT_GLOB_SEQUENCE && !s->use_glob) || s->pattern_type == PT_SEQUENCE) {
            if (FUNC16(s1->pb, &first_index, &last_index, s->path,
                                 s->start_number, s->start_number_range) < 0) {
                FUNC5(s1, AV_LOG_ERROR,
                       "Could find no file with path '%s' and index in the range %d-%d\n",
                       s->path, s->start_number, s->start_number + s->start_number_range - 1);
                return FUNC0(ENOENT);
            }
        } else if (s->pattern_type == PT_GLOB) {
#if HAVE_GLOB
            int gerr;
            gerr = glob(s->path, GLOB_NOCHECK|GLOB_BRACE|GLOB_NOMAGIC, NULL, &s->globstate);
            if (gerr != 0) {
                return AVERROR(ENOENT);
            }
            first_index = 0;
            last_index = s->globstate.gl_pathc - 1;
            s->use_glob = 1;
#else
            FUNC5(s1, AV_LOG_ERROR,
                   "Pattern type 'glob' was selected but globbing "
                   "is not supported by this libavformat build\n");
            return FUNC0(ENOSYS);
#endif
        } else if (s->pattern_type != PT_GLOB_SEQUENCE && s->pattern_type != PT_NONE) {
            FUNC5(s1, AV_LOG_ERROR,
                   "Unknown value '%d' for pattern_type option\n", s->pattern_type);
            return FUNC0(EINVAL);
        }
        s->img_first  = first_index;
        s->img_last   = last_index;
        s->img_number = first_index;
        /* compute duration */
        if (!s->ts_from_file) {
            st->start_time = 0;
            st->duration   = last_index - first_index + 1;
        }
    }

    if (s1->video_codec_id) {
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id   = s1->video_codec_id;
    } else if (s1->audio_codec_id) {
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id   = s1->audio_codec_id;
    } else if (s1->iformat->raw_codec_id) {
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        st->codecpar->codec_id   = s1->iformat->raw_codec_id;
    } else {
        const char *str = FUNC20(s->path, '.');
        s->split_planes       = str && !FUNC7(str + 1, "y");
        st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        if (s1->pb) {
            int probe_buffer_size = 2048;
            uint8_t *probe_buffer = FUNC6(NULL, probe_buffer_size + AVPROBE_PADDING_SIZE);
            const AVInputFormat *fmt = NULL;
            void *fmt_iter = NULL;
            AVProbeData pd = { 0 };

            if (!probe_buffer)
                return FUNC0(ENOMEM);

            probe_buffer_size = FUNC11(s1->pb, probe_buffer, probe_buffer_size);
            if (probe_buffer_size < 0) {
                FUNC2(probe_buffer);
                return probe_buffer_size;
            }
            FUNC19(probe_buffer + probe_buffer_size, 0, AVPROBE_PADDING_SIZE);

            pd.buf = probe_buffer;
            pd.buf_size = probe_buffer_size;
            pd.filename = s1->url;

            while ((fmt = FUNC1(&fmt_iter))) {
                if (fmt->read_header != ff_img_read_header ||
                    !fmt->read_probe ||
                    (fmt->flags & AVFMT_NOFILE) ||
                    !fmt->raw_codec_id)
                    continue;
                if (fmt->read_probe(&pd) > 0) {
                    st->codecpar->codec_id = fmt->raw_codec_id;
                    break;
                }
            }
            if (s1->flags & AVFMT_FLAG_CUSTOM_IO) {
                FUNC12(s1->pb, 0, SEEK_SET);
                FUNC3(&probe_buffer);
            } else
                FUNC15(s1->pb, &probe_buffer, probe_buffer_size);
        }
        if (st->codecpar->codec_id == AV_CODEC_ID_NONE)
            st->codecpar->codec_id = FUNC14(s->path);
        if (st->codecpar->codec_id == AV_CODEC_ID_LJPEG)
            st->codecpar->codec_id = AV_CODEC_ID_MJPEG;
        if (st->codecpar->codec_id == AV_CODEC_ID_ALIAS_PIX) // we cannot distingiush this from BRENDER_PIX
            st->codecpar->codec_id = AV_CODEC_ID_NONE;
    }
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO &&
        pix_fmt != AV_PIX_FMT_NONE)
        st->codecpar->format = pix_fmt;

    return 0;
}
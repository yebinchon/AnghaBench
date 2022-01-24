#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SwsContext {int dummy; } ;
typedef  struct SwsContext SwrContext ;
typedef  int /*<<< orphan*/  opt_stripped ;
typedef  int /*<<< orphan*/  AVOption ;
typedef  int /*<<< orphan*/  AVClass ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_OPTION_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_OPT_SEARCH_CHILDREN ; 
 int AV_OPT_SEARCH_FAKE_OBJ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FLAGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct SwsContext*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  codec_opts ; 
 int /*<<< orphan*/  format_opts ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  resample_opts ; 
 char* FUNC11 (char const*,char) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int FUNC13 (char const*) ; 
 struct SwsContext* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct SwsContext**) ; 
 int /*<<< orphan*/ * FUNC16 () ; 
 int /*<<< orphan*/  swr_opts ; 
 struct SwsContext* FUNC17 () ; 
 int /*<<< orphan*/  sws_dict ; 
 int /*<<< orphan*/  FUNC18 (struct SwsContext*) ; 
 int /*<<< orphan*/ * FUNC19 () ; 

int FUNC20(void *optctx, const char *opt, const char *arg)
{
    const AVOption *o;
    int consumed = 0;
    char opt_stripped[128];
    const char *p;
    const AVClass *cc = FUNC7(), *fc = FUNC8();
#if CONFIG_AVRESAMPLE
    const AVClass *rc = avresample_get_class();
#endif
#if CONFIG_SWSCALE
    const AVClass *sc = sws_get_class();
#endif
#if CONFIG_SWRESAMPLE
    const AVClass *swr_class = swr_get_class();
#endif

    if (!FUNC12(opt, "debug") || !FUNC12(opt, "fdebug"))
        FUNC4(AV_LOG_DEBUG);

    if (!(p = FUNC11(opt, ':')))
        p = opt + FUNC13(opt);
    FUNC6(opt_stripped, opt, FUNC1(sizeof(opt_stripped), p - opt + 1));

    if ((o = FUNC10(&cc, opt_stripped, NULL, 0,
                         AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ)) ||
        ((opt[0] == 'v' || opt[0] == 'a' || opt[0] == 's') &&
         (o = FUNC10(&cc, opt + 1, NULL, 0, AV_OPT_SEARCH_FAKE_OBJ)))) {
        FUNC2(&codec_opts, opt, arg, FLAGS);
        consumed = 1;
    }
    if ((o = FUNC10(&fc, opt, NULL, 0,
                         AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ))) {
        FUNC2(&format_opts, opt, arg, FLAGS);
        if (consumed)
            FUNC3(NULL, AV_LOG_VERBOSE, "Routing option %s to both codec and muxer layer\n", opt);
        consumed = 1;
    }
#if CONFIG_SWSCALE
    if (!consumed && (o = opt_find(&sc, opt, NULL, 0,
                         AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ))) {
        struct SwsContext *sws = sws_alloc_context();
        int ret = av_opt_set(sws, opt, arg, 0);
        sws_freeContext(sws);
        if (!strcmp(opt, "srcw") || !strcmp(opt, "srch") ||
            !strcmp(opt, "dstw") || !strcmp(opt, "dsth") ||
            !strcmp(opt, "src_format") || !strcmp(opt, "dst_format")) {
            av_log(NULL, AV_LOG_ERROR, "Directly using swscale dimensions/format options is not supported, please use the -s or -pix_fmt options\n");
            return AVERROR(EINVAL);
        }
        if (ret < 0) {
            av_log(NULL, AV_LOG_ERROR, "Error setting option %s.\n", opt);
            return ret;
        }

        av_dict_set(&sws_dict, opt, arg, FLAGS);

        consumed = 1;
    }
#else
    if (!consumed && !FUNC12(opt, "sws_flags")) {
        FUNC3(NULL, AV_LOG_WARNING, "Ignoring %s %s, due to disabled swscale\n", opt, arg);
        consumed = 1;
    }
#endif
#if CONFIG_SWRESAMPLE
    if (!consumed && (o=opt_find(&swr_class, opt, NULL, 0,
                                    AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ))) {
        struct SwrContext *swr = swr_alloc();
        int ret = av_opt_set(swr, opt, arg, 0);
        swr_free(&swr);
        if (ret < 0) {
            av_log(NULL, AV_LOG_ERROR, "Error setting option %s.\n", opt);
            return ret;
        }
        av_dict_set(&swr_opts, opt, arg, FLAGS);
        consumed = 1;
    }
#endif
#if CONFIG_AVRESAMPLE
    if ((o=opt_find(&rc, opt, NULL, 0,
                       AV_OPT_SEARCH_CHILDREN | AV_OPT_SEARCH_FAKE_OBJ))) {
        av_dict_set(&resample_opts, opt, arg, FLAGS);
        consumed = 1;
    }
#endif

    if (consumed)
        return 0;
    return AVERROR_OPTION_NOT_FOUND;
}
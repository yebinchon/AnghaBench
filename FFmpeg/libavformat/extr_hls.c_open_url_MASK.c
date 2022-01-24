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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int (* io_open ) (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int flags; TYPE_1__* priv_data; } ;
struct TYPE_7__ {char const* allowed_extensions; int /*<<< orphan*/  ctx; scalar_t__ http_persistent; } ;
typedef  TYPE_1__ HLSContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_EXIT ; 
 int AVERROR_INVALIDDATA ; 
 int AVFMT_FLAG_CUSTOM_IO ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s, AVIOContext **pb, const char *url,
                    AVDictionary *opts, AVDictionary *opts2, int *is_http_out)
{
    HLSContext *c = s->priv_data;
    AVDictionary *tmp = NULL;
    const char *proto_name = NULL;
    int ret;
    int is_http = 0;

    if (FUNC7(url, "crypto", NULL)) {
        if (url[6] == '+' || url[6] == ':')
            proto_name = FUNC8(url + 7);
    }

    if (!proto_name)
        proto_name = FUNC8(url);

    if (!proto_name)
        return AVERROR_INVALIDDATA;

    // only http(s) & file are allowed
    if (FUNC7(proto_name, "file", NULL)) {
        if (FUNC10(c->allowed_extensions, "ALL") && !FUNC5(url, c->allowed_extensions)) {
            FUNC4(s, AV_LOG_ERROR,
                "Filename extension of \'%s\' is not a common multimedia extension, blocked for security reasons.\n"
                "If you wish to override this adjust allowed_extensions, you can set it to \'ALL\' to allow all\n",
                url);
            return AVERROR_INVALIDDATA;
        }
    } else if (FUNC7(proto_name, "http", NULL)) {
        is_http = 1;
    } else
        return AVERROR_INVALIDDATA;

    if (!FUNC12(proto_name, url, FUNC11(proto_name)) && url[FUNC11(proto_name)] == ':')
        ;
    else if (FUNC7(url, "crypto", NULL) && !FUNC12(proto_name, url + 7, FUNC11(proto_name)) && url[7 + FUNC11(proto_name)] == ':')
        ;
    else if (FUNC10(proto_name, "file") || !FUNC12(url, "file,", 5))
        return AVERROR_INVALIDDATA;

    FUNC0(&tmp, opts, 0);
    FUNC0(&tmp, opts2, 0);

    if (is_http && c->http_persistent && *pb) {
        ret = FUNC9(c->ctx, pb, url, &tmp);
        if (ret == AVERROR_EXIT) {
            FUNC1(&tmp);
            return ret;
        } else if (ret < 0) {
            if (ret != AVERROR_EOF)
                FUNC4(s, AV_LOG_WARNING,
                    "keepalive request failed for '%s' with error: '%s' when opening url, retrying with new connection\n",
                    url, FUNC3(ret));
            ret = s->io_open(s, pb, url, AVIO_FLAG_READ, &tmp);
        }
    } else {
        ret = s->io_open(s, pb, url, AVIO_FLAG_READ, &tmp);
    }
    if (ret >= 0) {
        // update cookies on http response with setcookies.
        char *new_cookies = NULL;

        if (!(s->flags & AVFMT_FLAG_CUSTOM_IO))
            FUNC6(*pb, "cookies", AV_OPT_SEARCH_CHILDREN, (uint8_t**)&new_cookies);

        if (new_cookies)
            FUNC2(&opts, "cookies", new_cookies, AV_DICT_DONT_STRDUP_VAL);
    }

    FUNC1(&tmp);

    if (is_http_out)
        *is_http_out = is_http;

    return ret;
}
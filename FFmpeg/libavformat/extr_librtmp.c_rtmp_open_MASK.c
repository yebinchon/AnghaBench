#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_13__ {char* filename; int is_streamed; TYPE_4__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_12__ {int /*<<< orphan*/  sb_socket; } ;
struct TYPE_14__ {TYPE_1__ m_sb; } ;
struct TYPE_15__ {char* app; char* tcurl; char* pageurl; char* flashver; char* conn; char* playpath; char* subscribe; char* client_buffer_time; char* swfurl; char* swfverify; char* temp_filename; int buffer_size; scalar_t__ live; TYPE_3__ rtmp; } ;
typedef  TYPE_3__ RTMP ;
typedef  TYPE_4__ LibRTMPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int AVERROR_UNKNOWN ; 
 int AVIO_FLAG_WRITE ; 
#define  AV_LOG_DEBUG 133 
#define  AV_LOG_ERROR 132 
#define  AV_LOG_FATAL 131 
#define  AV_LOG_INFO 130 
#define  AV_LOG_VERBOSE 129 
#define  AV_LOG_WARNING 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int RTMP_LOGCRIT ; 
 int RTMP_LOGDEBUG ; 
 int RTMP_LOGDEBUG2 ; 
 int RTMP_LOGERROR ; 
 int RTMP_LOGINFO ; 
 int RTMP_LOGWARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 int FUNC10 () ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  rtmp_log ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 char* FUNC15 (char*,char) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 

__attribute__((used)) static int FUNC18(URLContext *s, const char *uri, int flags)
{
    LibRTMPContext *ctx = s->priv_data;
    RTMP *r = &ctx->rtmp;
    int rc = 0, level;
    char *filename = s->filename;
    int len = FUNC16(s->filename) + 1;

    switch (FUNC10()) {
    default:
    case AV_LOG_FATAL:   level = RTMP_LOGCRIT;    break;
    case AV_LOG_ERROR:   level = RTMP_LOGERROR;   break;
    case AV_LOG_WARNING: level = RTMP_LOGWARNING; break;
    case AV_LOG_INFO:    level = RTMP_LOGINFO;    break;
    case AV_LOG_VERBOSE: level = RTMP_LOGDEBUG;   break;
    case AV_LOG_DEBUG:   level = RTMP_LOGDEBUG2;  break;
    }
    FUNC7(level);
    FUNC6(rtmp_log);

    if (ctx->app)      len += FUNC16(ctx->app)      + sizeof(" app=");
    if (ctx->tcurl)    len += FUNC16(ctx->tcurl)    + sizeof(" tcUrl=");
    if (ctx->pageurl)  len += FUNC16(ctx->pageurl)  + sizeof(" pageUrl=");
    if (ctx->flashver) len += FUNC16(ctx->flashver) + sizeof(" flashver=");

    if (ctx->conn) {
        char *sep, *p = ctx->conn;
        int options = 0;

        while (p) {
            options++;
            p += FUNC17(p, " ");
            if (!*p)
                break;
            sep = FUNC15(p, ' ');
            if (sep)
                p = sep + 1;
            else
                break;
        }
        len += options * sizeof(" conn=");
        len += FUNC16(ctx->conn);
    }

    if (ctx->playpath)
        len += FUNC16(ctx->playpath) + sizeof(" playpath=");
    if (ctx->live)
        len += sizeof(" live=1");
    if (ctx->subscribe)
        len += FUNC16(ctx->subscribe) + sizeof(" subscribe=");

    if (ctx->client_buffer_time)
        len += FUNC16(ctx->client_buffer_time) + sizeof(" buffer=");

    if (ctx->swfurl || ctx->swfverify) {
        len += sizeof(" swfUrl=");

        if (ctx->swfverify)
            len += FUNC16(ctx->swfverify) + sizeof(" swfVfy=1");
        else
            len += FUNC16(ctx->swfurl);
    }

    if (!(ctx->temp_filename = filename = FUNC11(len)))
        return FUNC0(ENOMEM);

    FUNC13(filename, s->filename, len);
    if (ctx->app) {
        FUNC12(filename, " app=", len);
        FUNC12(filename, ctx->app, len);
    }
    if (ctx->tcurl) {
        FUNC12(filename, " tcUrl=", len);
        FUNC12(filename, ctx->tcurl, len);
    }
    if (ctx->pageurl) {
        FUNC12(filename, " pageUrl=", len);
        FUNC12(filename, ctx->pageurl, len);
    }
    if (ctx->swfurl) {
        FUNC12(filename, " swfUrl=", len);
        FUNC12(filename, ctx->swfurl, len);
    }
    if (ctx->flashver) {
        FUNC12(filename, " flashVer=", len);
        FUNC12(filename, ctx->flashver, len);
    }
    if (ctx->conn) {
        char *sep, *p = ctx->conn;
        while (p) {
            FUNC12(filename, " conn=", len);
            p += FUNC17(p, " ");
            if (!*p)
                break;
            sep = FUNC15(p, ' ');
            if (sep)
                *sep = '\0';
            FUNC12(filename, p, len);

            if (sep)
                p = sep + 1;
            else
                break;
        }
    }
    if (ctx->playpath) {
        FUNC12(filename, " playpath=", len);
        FUNC12(filename, ctx->playpath, len);
    }
    if (ctx->live)
        FUNC12(filename, " live=1", len);
    if (ctx->subscribe) {
        FUNC12(filename, " subscribe=", len);
        FUNC12(filename, ctx->subscribe, len);
    }
    if (ctx->client_buffer_time) {
        FUNC12(filename, " buffer=", len);
        FUNC12(filename, ctx->client_buffer_time, len);
    }
    if (ctx->swfurl || ctx->swfverify) {
        FUNC12(filename, " swfUrl=", len);

        if (ctx->swfverify) {
            FUNC12(filename, ctx->swfverify, len);
            FUNC12(filename, " swfVfy=1", len);
        } else {
            FUNC12(filename, ctx->swfurl, len);
        }
    }

    FUNC5(r);
    if (!FUNC8(r, filename)) {
        rc = AVERROR_UNKNOWN;
        goto fail;
    }

    if (flags & AVIO_FLAG_WRITE)
        FUNC4(r);

    if (!FUNC2(r, NULL) || !FUNC3(r, 0)) {
        rc = AVERROR_UNKNOWN;
        goto fail;
    }

#if CONFIG_NETWORK
    if (ctx->buffer_size >= 0 && (flags & AVIO_FLAG_WRITE)) {
        int tmp = ctx->buffer_size;
        if (setsockopt(r->m_sb.sb_socket, SOL_SOCKET, SO_SNDBUF, &tmp, sizeof(tmp))) {
            rc = AVERROR_EXTERNAL;
            goto fail;
        }
    }
#endif

    s->is_streamed = 1;
    return 0;
fail:
    FUNC9(&ctx->temp_filename);
    if (rc)
        FUNC1(r);

    return rc;
}
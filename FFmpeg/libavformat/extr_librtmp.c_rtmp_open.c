
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_13__ {char* filename; int is_streamed; TYPE_4__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_12__ {int sb_socket; } ;
struct TYPE_14__ {TYPE_1__ m_sb; } ;
struct TYPE_15__ {char* app; char* tcurl; char* pageurl; char* flashver; char* conn; char* playpath; char* subscribe; char* client_buffer_time; char* swfurl; char* swfverify; char* temp_filename; int buffer_size; scalar_t__ live; TYPE_3__ rtmp; } ;
typedef TYPE_3__ RTMP ;
typedef TYPE_4__ LibRTMPContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AVERROR_UNKNOWN ;
 int AVIO_FLAG_WRITE ;






 int ENOMEM ;
 int RTMP_Close (TYPE_3__*) ;
 int RTMP_Connect (TYPE_3__*,int *) ;
 int RTMP_ConnectStream (TYPE_3__*,int ) ;
 int RTMP_EnableWrite (TYPE_3__*) ;
 int RTMP_Init (TYPE_3__*) ;
 int RTMP_LOGCRIT ;
 int RTMP_LOGDEBUG ;
 int RTMP_LOGDEBUG2 ;
 int RTMP_LOGERROR ;
 int RTMP_LOGINFO ;
 int RTMP_LOGWARNING ;
 int RTMP_LogSetCallback (int ) ;
 int RTMP_LogSetLevel (int) ;
 int RTMP_SetupURL (TYPE_3__*,char*) ;
 int SOL_SOCKET ;
 int SO_SNDBUF ;
 int av_freep (char**) ;
 int av_log_get_level () ;
 char* av_malloc (int) ;
 int av_strlcat (char*,char*,int) ;
 int av_strlcpy (char*,char*,int) ;
 int rtmp_log ;
 scalar_t__ setsockopt (int ,int ,int ,int*,int) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static int rtmp_open(URLContext *s, const char *uri, int flags)
{
    LibRTMPContext *ctx = s->priv_data;
    RTMP *r = &ctx->rtmp;
    int rc = 0, level;
    char *filename = s->filename;
    int len = strlen(s->filename) + 1;

    switch (av_log_get_level()) {
    default:
    case 131: level = RTMP_LOGCRIT; break;
    case 132: level = RTMP_LOGERROR; break;
    case 128: level = RTMP_LOGWARNING; break;
    case 130: level = RTMP_LOGINFO; break;
    case 129: level = RTMP_LOGDEBUG; break;
    case 133: level = RTMP_LOGDEBUG2; break;
    }
    RTMP_LogSetLevel(level);
    RTMP_LogSetCallback(rtmp_log);

    if (ctx->app) len += strlen(ctx->app) + sizeof(" app=");
    if (ctx->tcurl) len += strlen(ctx->tcurl) + sizeof(" tcUrl=");
    if (ctx->pageurl) len += strlen(ctx->pageurl) + sizeof(" pageUrl=");
    if (ctx->flashver) len += strlen(ctx->flashver) + sizeof(" flashver=");

    if (ctx->conn) {
        char *sep, *p = ctx->conn;
        int options = 0;

        while (p) {
            options++;
            p += strspn(p, " ");
            if (!*p)
                break;
            sep = strchr(p, ' ');
            if (sep)
                p = sep + 1;
            else
                break;
        }
        len += options * sizeof(" conn=");
        len += strlen(ctx->conn);
    }

    if (ctx->playpath)
        len += strlen(ctx->playpath) + sizeof(" playpath=");
    if (ctx->live)
        len += sizeof(" live=1");
    if (ctx->subscribe)
        len += strlen(ctx->subscribe) + sizeof(" subscribe=");

    if (ctx->client_buffer_time)
        len += strlen(ctx->client_buffer_time) + sizeof(" buffer=");

    if (ctx->swfurl || ctx->swfverify) {
        len += sizeof(" swfUrl=");

        if (ctx->swfverify)
            len += strlen(ctx->swfverify) + sizeof(" swfVfy=1");
        else
            len += strlen(ctx->swfurl);
    }

    if (!(ctx->temp_filename = filename = av_malloc(len)))
        return AVERROR(ENOMEM);

    av_strlcpy(filename, s->filename, len);
    if (ctx->app) {
        av_strlcat(filename, " app=", len);
        av_strlcat(filename, ctx->app, len);
    }
    if (ctx->tcurl) {
        av_strlcat(filename, " tcUrl=", len);
        av_strlcat(filename, ctx->tcurl, len);
    }
    if (ctx->pageurl) {
        av_strlcat(filename, " pageUrl=", len);
        av_strlcat(filename, ctx->pageurl, len);
    }
    if (ctx->swfurl) {
        av_strlcat(filename, " swfUrl=", len);
        av_strlcat(filename, ctx->swfurl, len);
    }
    if (ctx->flashver) {
        av_strlcat(filename, " flashVer=", len);
        av_strlcat(filename, ctx->flashver, len);
    }
    if (ctx->conn) {
        char *sep, *p = ctx->conn;
        while (p) {
            av_strlcat(filename, " conn=", len);
            p += strspn(p, " ");
            if (!*p)
                break;
            sep = strchr(p, ' ');
            if (sep)
                *sep = '\0';
            av_strlcat(filename, p, len);

            if (sep)
                p = sep + 1;
            else
                break;
        }
    }
    if (ctx->playpath) {
        av_strlcat(filename, " playpath=", len);
        av_strlcat(filename, ctx->playpath, len);
    }
    if (ctx->live)
        av_strlcat(filename, " live=1", len);
    if (ctx->subscribe) {
        av_strlcat(filename, " subscribe=", len);
        av_strlcat(filename, ctx->subscribe, len);
    }
    if (ctx->client_buffer_time) {
        av_strlcat(filename, " buffer=", len);
        av_strlcat(filename, ctx->client_buffer_time, len);
    }
    if (ctx->swfurl || ctx->swfverify) {
        av_strlcat(filename, " swfUrl=", len);

        if (ctx->swfverify) {
            av_strlcat(filename, ctx->swfverify, len);
            av_strlcat(filename, " swfVfy=1", len);
        } else {
            av_strlcat(filename, ctx->swfurl, len);
        }
    }

    RTMP_Init(r);
    if (!RTMP_SetupURL(r, filename)) {
        rc = AVERROR_UNKNOWN;
        goto fail;
    }

    if (flags & AVIO_FLAG_WRITE)
        RTMP_EnableWrite(r);

    if (!RTMP_Connect(r, ((void*)0)) || !RTMP_ConnectStream(r, 0)) {
        rc = AVERROR_UNKNOWN;
        goto fail;
    }
    s->is_streamed = 1;
    return 0;
fail:
    av_freep(&ctx->temp_filename);
    if (rc)
        RTMP_Close(r);

    return rc;
}

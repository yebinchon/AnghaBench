
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_9__ {char const* msg; } ;
struct TYPE_8__ {int compressed; TYPE_4__ inflate_stream; } ;
typedef TYPE_2__ HTTPContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOSYS ;
 scalar_t__ Z_OK ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_strncasecmp (char const*,char*,int) ;
 int inflateEnd (TYPE_4__*) ;
 scalar_t__ inflateInit2 (TYPE_4__*,int) ;
 int zlibCompileFlags () ;

__attribute__((used)) static int parse_content_encoding(URLContext *h, const char *p)
{
    if (!av_strncasecmp(p, "gzip", 4) ||
        !av_strncasecmp(p, "deflate", 7)) {
        av_log(h, AV_LOG_WARNING,
               "Compressed (%s) content, need zlib with gzip support\n", p);
        return AVERROR(ENOSYS);

    } else if (!av_strncasecmp(p, "identity", 8)) {


    } else {
        av_log(h, AV_LOG_WARNING, "Unknown content coding: %s\n", p);
    }
    return 0;
}

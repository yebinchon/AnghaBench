
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct URLProtocol {int flags; int name; } ;
typedef int proto_str ;
typedef int proto_nested ;
typedef struct URLProtocol URLProtocol ;


 int AV_LOG_WARNING ;
 int FFMIN (size_t,int) ;
 int URL_PROTOCOL_FLAG_NESTED_SCHEME ;
 int URL_SCHEME_CHARS ;
 int av_freep (struct URLProtocol const***) ;
 int av_log (int *,int ,char*) ;
 int av_strlcpy (char*,char const*,int) ;
 scalar_t__ av_strstart (char const*,char*,int *) ;
 struct URLProtocol** ffurl_get_protocols (int *,int *) ;
 scalar_t__ is_dos_path (char const*) ;
 char* strchr (char const*,char) ;
 int strcmp (char*,int ) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 size_t strspn (char const*,int ) ;

__attribute__((used)) static const struct URLProtocol *url_find_protocol(const char *filename)
{
    const URLProtocol **protocols;
    char proto_str[128], proto_nested[128], *ptr;
    size_t proto_len = strspn(filename, URL_SCHEME_CHARS);
    int i;

    if (filename[proto_len] != ':' &&
        (strncmp(filename, "subfile,", 8) || !strchr(filename + proto_len + 1, ':')) ||
        is_dos_path(filename))
        strcpy(proto_str, "file");
    else
        av_strlcpy(proto_str, filename,
                   FFMIN(proto_len + 1, sizeof(proto_str)));

    av_strlcpy(proto_nested, proto_str, sizeof(proto_nested));
    if ((ptr = strchr(proto_nested, '+')))
        *ptr = '\0';

    protocols = ffurl_get_protocols(((void*)0), ((void*)0));
    if (!protocols)
        return ((void*)0);
    for (i = 0; protocols[i]; i++) {
            const URLProtocol *up = protocols[i];
        if (!strcmp(proto_str, up->name)) {
            av_freep(&protocols);
            return up;
        }
        if (up->flags & URL_PROTOCOL_FLAG_NESTED_SCHEME &&
            !strcmp(proto_nested, up->name)) {
            av_freep(&protocols);
            return up;
        }
    }
    av_freep(&protocols);
    if (av_strstart(filename, "https:", ((void*)0)) || av_strstart(filename, "tls:", ((void*)0)))
        av_log(((void*)0), AV_LOG_WARNING, "https protocol not found, recompile FFmpeg with "
                                     "openssl, gnutls or securetransport enabled.\n");

    return ((void*)0);
}

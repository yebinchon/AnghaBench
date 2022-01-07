
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {int priv_key_pw; } ;
typedef TYPE_1__ TLSContext ;


 scalar_t__ av_find_info_tag (char*,int,char*,char const*) ;
 int av_strdup (char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void parse_options(TLSContext *tls_ctxc, const char *uri)
{
    char buf[1024];
    const char *p = strchr(uri, '?');
    if (!p)
        return;

    if (!tls_ctxc->priv_key_pw && av_find_info_tag(buf, sizeof(buf), "key_password", p))
        tls_ctxc->priv_key_pw = av_strdup(buf);
}

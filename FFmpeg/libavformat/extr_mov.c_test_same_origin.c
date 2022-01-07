
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int src_proto ;
typedef int src_host ;
typedef int src_auth ;
typedef int ref_proto ;
typedef int ref_host ;
typedef int ref_auth ;


 int av_url_split (char*,int,char*,int,char*,int,int*,int *,int ,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int test_same_origin(const char *src, const char *ref) {
    char src_proto[64];
    char ref_proto[64];
    char src_auth[256];
    char ref_auth[256];
    char src_host[256];
    char ref_host[256];
    int src_port=-1;
    int ref_port=-1;

    av_url_split(src_proto, sizeof(src_proto), src_auth, sizeof(src_auth), src_host, sizeof(src_host), &src_port, ((void*)0), 0, src);
    av_url_split(ref_proto, sizeof(ref_proto), ref_auth, sizeof(ref_auth), ref_host, sizeof(ref_host), &ref_port, ((void*)0), 0, ref);

    if (strlen(src) == 0) {
        return -1;
    } else if (strlen(src_auth) + 1 >= sizeof(src_auth) ||
        strlen(ref_auth) + 1 >= sizeof(ref_auth) ||
        strlen(src_host) + 1 >= sizeof(src_host) ||
        strlen(ref_host) + 1 >= sizeof(ref_host)) {
        return 0;
    } else if (strcmp(src_proto, ref_proto) ||
               strcmp(src_auth, ref_auth) ||
               strcmp(src_host, ref_host) ||
               src_port != ref_port) {
        return 0;
    } else
        return 1;
}

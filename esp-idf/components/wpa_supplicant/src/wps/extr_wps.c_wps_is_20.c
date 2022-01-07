
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int * version2; } ;
struct wpabuf {int dummy; } ;


 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

int wps_is_20(const struct wpabuf *msg)
{
    struct wps_parse_attr *attr;
    int ret;

    attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
    if (attr == ((void*)0))
        return 0;

    if (msg == ((void*)0) || wps_parse_msg(msg, attr) < 0) {
        ret = 0;
    } else {
        ret = (attr->version2 != ((void*)0));
    }
    os_free(attr);
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_parse_attr {int * uuid_e; } ;
struct wpabuf {int dummy; } ;


 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

const u8 * wps_get_uuid_e(const struct wpabuf *msg)
{
    struct wps_parse_attr *attr;
    const u8 *uuid_e;

    attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
    if (attr == ((void*)0))
        return ((void*)0);

    if (wps_parse_msg(msg, attr) < 0) {
        uuid_e = ((void*)0);
    } else {
        uuid_e = attr->uuid_e;
    }
    os_free(attr);
    return uuid_e;
}

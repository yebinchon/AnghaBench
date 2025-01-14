
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__* selected_registrar; } ;
struct wpabuf {int dummy; } ;


 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

int wps_ap_priority_compar(const struct wpabuf *wps_a,
               const struct wpabuf *wps_b)
{
    struct wps_parse_attr *attr_a, *attr_b;
    int sel_a, sel_b;
    int ret = 0;

    attr_a = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
    attr_b = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));

    if (attr_a == ((void*)0) || attr_b == ((void*)0)) {
        ret = 0;
        goto _out;
    }

    if (wps_a == ((void*)0) || wps_parse_msg(wps_a, attr_a) < 0)
        return 1;
    if (wps_b == ((void*)0) || wps_parse_msg(wps_b, attr_b) < 0)
        return -1;

    sel_a = attr_a->selected_registrar && *attr_a->selected_registrar != 0;
    sel_b = attr_b->selected_registrar && *attr_b->selected_registrar != 0;

    if (sel_a && !sel_b) {
        ret = -1;
        goto _out;
    }
    if (!sel_a && sel_b) {
        ret = 1;
        goto _out;
    }

_out:
    if (attr_a)
        os_free(attr_a);
    if (attr_b)
        os_free(attr_b);
    return ret;
}

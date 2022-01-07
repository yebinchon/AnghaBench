
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh2lib_handle {int hostname; int * http2_tls; } ;
struct http_parser_url {TYPE_1__* field_data; } ;
struct TYPE_5__ {char const** alpn_protos; int non_block; } ;
typedef TYPE_2__ esp_tls_cfg_t ;
struct TYPE_4__ {size_t off; int len; } ;


 int ESP_LOGE (int ,char*,...) ;
 int TAG ;
 size_t UF_HOST ;
 scalar_t__ do_http2_connect (struct sh2lib_handle*) ;
 int * esp_tls_conn_http_new (char const*,TYPE_2__*) ;
 int http_parser_parse_url (char const*,int ,int ,struct http_parser_url*) ;
 int http_parser_url_init (struct http_parser_url*) ;
 int memset (struct sh2lib_handle*,int ,int) ;
 int sh2lib_free (struct sh2lib_handle*) ;
 int strlen (char const*) ;
 int strndup (char const*,int ) ;

int sh2lib_connect(struct sh2lib_handle *hd, const char *uri)
{
    memset(hd, 0, sizeof(*hd));
    const char *proto[] = {"h2", ((void*)0)};
    esp_tls_cfg_t tls_cfg = {
        .alpn_protos = proto,
        .non_block = 1,
    };
    if ((hd->http2_tls = esp_tls_conn_http_new(uri, &tls_cfg)) == ((void*)0)) {
        ESP_LOGE(TAG, "[sh2-connect] esp-tls connection failed");
        goto error;
    }
    struct http_parser_url u;
    http_parser_url_init(&u);
    http_parser_parse_url(uri, strlen(uri), 0, &u);
    hd->hostname = strndup(&uri[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len);


    if (do_http2_connect(hd) != 0) {
        ESP_LOGE(TAG, "[sh2-connect] HTTP2 Connection failed with %s", uri);
        goto error;
    }

    return 0;
error:
    sh2lib_free(hd);
    return -1;
}

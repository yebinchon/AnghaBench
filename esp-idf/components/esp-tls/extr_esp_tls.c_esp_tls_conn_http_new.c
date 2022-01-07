
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct http_parser_url {TYPE_1__* field_data; } ;
typedef int esp_tls_t ;
typedef int esp_tls_cfg_t ;
struct TYPE_2__ {size_t off; int len; } ;


 size_t UF_HOST ;
 int esp_tls_conn_new_sync (char const*,int ,int ,int const*,int *) ;
 int * esp_tls_init () ;
 int get_port (char const*,struct http_parser_url*) ;
 int http_parser_parse_url (char const*,int ,int ,struct http_parser_url*) ;
 int http_parser_url_init (struct http_parser_url*) ;
 int strlen (char const*) ;

esp_tls_t *esp_tls_conn_http_new(const char *url, const esp_tls_cfg_t *cfg)
{

    struct http_parser_url u;
    http_parser_url_init(&u);
    http_parser_parse_url(url, strlen(url), 0, &u);
    esp_tls_t *tls = esp_tls_init();
    if (!tls) {
        return ((void*)0);
    }

    if (esp_tls_conn_new_sync(&url[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len,
                              get_port(url, &u), cfg, tls) == 1) {
        return tls;
    }
    return ((void*)0);
}

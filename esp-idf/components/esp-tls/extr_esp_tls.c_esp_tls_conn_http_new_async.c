
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
 int esp_tls_conn_new_async (char const*,int ,int ,int const*,int *) ;
 int get_port (char const*,struct http_parser_url*) ;
 int http_parser_parse_url (char const*,int ,int ,struct http_parser_url*) ;
 int http_parser_url_init (struct http_parser_url*) ;
 int strlen (char const*) ;

int esp_tls_conn_http_new_async(const char *url, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{

    struct http_parser_url u;
    http_parser_url_init(&u);
    http_parser_parse_url(url, strlen(url), 0, &u);


    return esp_tls_conn_new_async(&url[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len,
                                  get_port(url, &u), cfg, tls);
}

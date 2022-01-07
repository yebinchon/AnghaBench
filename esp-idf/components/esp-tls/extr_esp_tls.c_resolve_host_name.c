
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_socktype; int ai_family; } ;
typedef int hints ;
typedef int esp_err_t ;


 int AF_UNSPEC ;
 int ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGD (int ,char*,char*,unsigned long) ;
 int ESP_LOGE (int ,char*,char*) ;
 int ESP_OK ;
 int SOCK_STREAM ;
 int TAG ;
 int free (char*) ;
 scalar_t__ getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 char* strndup (char const*,size_t) ;

__attribute__((used)) static esp_err_t resolve_host_name(const char *host, size_t hostlen, struct addrinfo **address_info)
{
    struct addrinfo hints;
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    char *use_host = strndup(host, hostlen);
    if (!use_host) {
        return ESP_ERR_NO_MEM;
    }

    ESP_LOGD(TAG, "host:%s: strlen %lu", use_host, (unsigned long)hostlen);
    if (getaddrinfo(use_host, ((void*)0), &hints, address_info)) {
        ESP_LOGE(TAG, "couldn't get hostname for :%s:", use_host);
        free(use_host);
        return ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME;
    }
    free(use_host);
    return ESP_OK;
}

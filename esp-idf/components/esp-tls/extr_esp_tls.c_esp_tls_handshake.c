
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_tls_t ;
typedef int esp_tls_cfg_t ;
typedef int esp_err_t ;


 int _esp_tls_handshake (int *,int const*) ;

__attribute__((used)) static esp_err_t esp_tls_handshake(esp_tls_t *tls, const esp_tls_cfg_t *cfg)
{
    return _esp_tls_handshake(tls, cfg);
}

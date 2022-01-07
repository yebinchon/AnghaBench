
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t min_minor_ver; int dhm_min_bitlen; int curve_list; int sig_hashes; int * cert_profile; int * ciphersuite_list; void* max_minor_ver; void* max_major_ver; void* min_major_ver; scalar_t__ renego_period; int renego_max_records; int hs_timeout_max; int hs_timeout_min; int cert_req_ca_list; int anti_replay; int f_cookie_check; int f_cookie_write; int cbc_record_splitting; int extended_ms; int encrypt_then_mac; int arc4_disabled; int session_tickets; int authmode; } ;
typedef TYPE_1__ mbedtls_ssl_config ;


 int MBEDTLS_DHM_RFC5114_MODP_2048_G ;
 int MBEDTLS_DHM_RFC5114_MODP_2048_P ;
 int MBEDTLS_SSL_ANTI_REPLAY_ENABLED ;
 int MBEDTLS_SSL_ARC4_DISABLED ;
 int MBEDTLS_SSL_CBC_RECORD_SPLITTING_ENABLED ;
 int MBEDTLS_SSL_CERT_REQ_CA_LIST_ENABLED ;
 int MBEDTLS_SSL_DTLS_TIMEOUT_DFL_MAX ;
 int MBEDTLS_SSL_DTLS_TIMEOUT_DFL_MIN ;
 int MBEDTLS_SSL_ETM_ENABLED ;
 int MBEDTLS_SSL_EXTENDED_MS_ENABLED ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_IS_SERVER ;
 void* MBEDTLS_SSL_MAJOR_VERSION_3 ;
 void* MBEDTLS_SSL_MAX_MAJOR_VERSION ;
 void* MBEDTLS_SSL_MAX_MINOR_VERSION ;
 size_t MBEDTLS_SSL_MINOR_VERSION_0 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_1 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_2 ;
 size_t MBEDTLS_SSL_MINOR_VERSION_3 ;

 int MBEDTLS_SSL_RENEGO_MAX_RECORDS_DEFAULT ;
 int MBEDTLS_SSL_SESSION_TICKETS_ENABLED ;
 int MBEDTLS_SSL_TRANSPORT_DATAGRAM ;
 int MBEDTLS_SSL_VERIFY_REQUIRED ;
 int mbedtls_ecp_grp_id_list () ;
 int mbedtls_ssl_conf_dh_param (TYPE_1__*,int ,int ) ;
 int mbedtls_ssl_conf_endpoint (TYPE_1__*,int) ;
 int mbedtls_ssl_conf_transport (TYPE_1__*,int) ;
 int mbedtls_ssl_list_ciphersuites () ;
 int mbedtls_x509_crt_profile_default ;
 int mbedtls_x509_crt_profile_suiteb ;
 int memset (scalar_t__,int,int) ;
 int ssl_cookie_check_dummy ;
 int ssl_cookie_write_dummy ;
 int ssl_preset_default_hashes ;
 int ssl_preset_suiteb_ciphersuites ;
 int ssl_preset_suiteb_curves ;
 int ssl_preset_suiteb_hashes ;

int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset )
{






    mbedtls_ssl_conf_endpoint( conf, endpoint );
    mbedtls_ssl_conf_transport( conf, transport );
    switch( preset )
    {



        case 128:
            conf->min_major_ver = MBEDTLS_SSL_MAJOR_VERSION_3;
            conf->min_minor_ver = MBEDTLS_SSL_MINOR_VERSION_3;
            conf->max_major_ver = MBEDTLS_SSL_MAX_MAJOR_VERSION;
            conf->max_minor_ver = MBEDTLS_SSL_MAX_MINOR_VERSION;

            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_0] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_1] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_2] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_3] =
                                   ssl_preset_suiteb_ciphersuites;
            break;




        default:
            conf->min_major_ver = MBEDTLS_SSL_MAJOR_VERSION_3;
            conf->min_minor_ver = MBEDTLS_SSL_MINOR_VERSION_1;
            conf->max_major_ver = MBEDTLS_SSL_MAX_MAJOR_VERSION;
            conf->max_minor_ver = MBEDTLS_SSL_MAX_MINOR_VERSION;






            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_0] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_1] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_2] =
            conf->ciphersuite_list[MBEDTLS_SSL_MINOR_VERSION_3] =
                                   mbedtls_ssl_list_ciphersuites();
    }

    return( 0 );
}

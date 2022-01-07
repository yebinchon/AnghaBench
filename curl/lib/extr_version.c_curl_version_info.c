
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ssl_buffer ;
typedef int ssh_buffer ;
typedef int quicbuffer ;
struct TYPE_7__ {int version_str; int version_num; } ;
typedef TYPE_1__ nghttp2_info ;
struct TYPE_8__ {char* ssl_version; int ares_num; int iconv_ver_num; char* libssh_version; char* brotli_version; char* quic_version; int nghttp2_version; int nghttp2_ver_num; int brotli_ver_num; int features; scalar_t__ libidn; int ares; int libz_version; } ;
typedef TYPE_2__ curl_version_info_data ;
typedef int brotli_buffer ;
struct TYPE_9__ {int supports; } ;
typedef int CURLversion ;


 int BrotliDecoderVersion () ;
 int CURL_VERSION_HTTPS_PROXY ;
 int CURL_VERSION_IDN ;
 int Curl_quic_ver (char*,int) ;
 int Curl_ssh_version (char*,int) ;
 TYPE_6__* Curl_ssl ;
 int Curl_ssl_version (char*,int) ;
 int IDN2_VERSION ;
 int SSLSUPP_HTTPS_PROXY ;
 int _LIBICONV_VERSION ;
 int ares_version (int*) ;
 int brotli_version (char*,int) ;
 scalar_t__ idn2_check_version (int ) ;
 TYPE_1__* nghttp2_version (int ) ;
 TYPE_2__ version_info ;
 int zlibVersion () ;

curl_version_info_data *curl_version_info(CURLversion stamp)
{
  static bool initialized;
  if(initialized)
    return &version_info;
  (void)stamp;

  initialized = 1;
  return &version_info;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostname {char* dispname; char* name; char* encalloc; } ;
struct connectdata {struct Curl_easy* data; } ;
struct Curl_easy {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int IDN2_NFC_INPUT ;
 int IDN2_NONTRANSITIONAL ;
 int IDN2_OK ;
 int IDN2_VERSION ;
 scalar_t__ curl_win32_idn_to_ascii (char*,char**) ;
 int failf (struct Curl_easy*,char*,char*,...) ;
 scalar_t__ idn2_check_version (int ) ;
 int idn2_lookup_ul (char const*,char**,int) ;
 int idn2_strerror (int) ;
 int infof (struct Curl_easy*,char*) ;
 int is_ASCII_name (char*) ;

__attribute__((used)) static CURLcode idnconvert_hostname(struct connectdata *conn,
                                    struct hostname *host)
{
  struct Curl_easy *data = conn->data;


  (void)data;
  (void)conn;





  host->dispname = host->name;


  if(!is_ASCII_name(host->name)) {
    infof(data, "IDN support not present, can't parse Unicode domains\n");

  }
  return CURLE_OK;
}

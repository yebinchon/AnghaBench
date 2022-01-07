
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct curl_tlssessioninfo {int * internals; int backend; } ;
struct curl_slist {int dummy; } ;
struct curl_certinfo {int dummy; } ;
struct connectdata {TYPE_2__* ssl; } ;
struct TYPE_4__ {struct curl_certinfo certs; } ;
struct Curl_easy {struct connectdata* conn; struct curl_tlssessioninfo tsi; TYPE_1__ info; } ;
struct TYPE_6__ {int * (* get_internals ) (TYPE_2__*,int) ;} ;
struct TYPE_5__ {int use; } ;
typedef int CURLcode ;
typedef int CURLINFO ;


 int CURLE_OK ;
 int CURLE_UNKNOWN_OPTION ;





 int CURLSSLBACKEND_NONE ;
 struct curl_slist* Curl_cookie_list (struct Curl_easy*) ;
 TYPE_3__* Curl_ssl ;
 int Curl_ssl_backend () ;
 struct curl_slist* Curl_ssl_engines_list (struct Curl_easy*) ;
 int * stub1 (TYPE_2__*,int) ;

__attribute__((used)) static CURLcode getinfo_slist(struct Curl_easy *data, CURLINFO info,
                              struct curl_slist **param_slistp)
{
  union {
    struct curl_certinfo *to_certinfo;
    struct curl_slist *to_slist;
  } ptr;

  switch(info) {
  case 130:
    *param_slistp = Curl_ssl_engines_list(data);
    break;
  case 131:
    *param_slistp = Curl_cookie_list(data);
    break;
  case 132:


    ptr.to_certinfo = &data->info.certs;
    *param_slistp = ptr.to_slist;
    break;
  case 129:
  case 128:
    {
      struct curl_tlssessioninfo **tsip = (struct curl_tlssessioninfo **)
                                          param_slistp;
      struct curl_tlssessioninfo *tsi = &data->tsi;




      *tsip = tsi;
      tsi->backend = Curl_ssl_backend();
      tsi->internals = ((void*)0);
    }
    break;
  default:
    return CURLE_UNKNOWN_OPTION;
  }

  return CURLE_OK;
}

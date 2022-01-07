
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dohdata {int dummy; } ;
struct connectdata {scalar_t__ ip_version; struct Curl_easy* data; } ;
struct TYPE_7__ {char const* host; int port; TYPE_4__* probe; int * headers; int pending; } ;
struct TYPE_6__ {TYPE_3__ doh; } ;
struct TYPE_5__ {int * str; } ;
struct Curl_easy {TYPE_2__ req; int multi; TYPE_1__ set; } ;
struct TYPE_8__ {int easy; } ;
typedef int Curl_addrinfo ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURL_IPRESOLVE_V4 ;
 scalar_t__ CURL_IPRESOLVE_V6 ;
 int Curl_close (int *) ;
 int DNS_TYPE_A ;
 int DNS_TYPE_AAAA ;
 size_t STRING_DOH ;
 int TRUE ;
 int * curl_slist_append (int *,char*) ;
 int curl_slist_free_all (int *) ;
 scalar_t__ dohprobe (struct Curl_easy*,TYPE_4__*,int ,char const*,int ,int ,int *) ;
 int memset (TYPE_3__*,int ,int) ;

Curl_addrinfo *Curl_doh(struct connectdata *conn,
                        const char *hostname,
                        int port,
                        int *waitp)
{
  struct Curl_easy *data = conn->data;
  CURLcode result = CURLE_OK;
  *waitp = TRUE;
  (void)conn;
  (void)hostname;
  (void)port;


  memset(&data->req.doh, 0, sizeof(struct dohdata));

  data->req.doh.host = hostname;
  data->req.doh.port = port;
  data->req.doh.headers =
    curl_slist_append(((void*)0),
                      "Content-Type: application/dns-message");
  if(!data->req.doh.headers)
    goto error;

  if(conn->ip_version != CURL_IPRESOLVE_V6) {

    result = dohprobe(data, &data->req.doh.probe[0], DNS_TYPE_A,
                      hostname, data->set.str[STRING_DOH],
                      data->multi, data->req.doh.headers);
    if(result)
      goto error;
    data->req.doh.pending++;
  }

  if(conn->ip_version != CURL_IPRESOLVE_V4) {

    result = dohprobe(data, &data->req.doh.probe[1], DNS_TYPE_AAAA,
                      hostname, data->set.str[STRING_DOH],
                      data->multi, data->req.doh.headers);
    if(result)
      goto error;
    data->req.doh.pending++;
  }
  return ((void*)0);

  error:
  curl_slist_free_all(data->req.doh.headers);
  data->req.doh.headers = ((void*)0);
  Curl_close(&data->req.doh.probe[0].easy);
  Curl_close(&data->req.doh.probe[1].easy);
  return ((void*)0);
}

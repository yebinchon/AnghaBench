
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ timediff_t ;
struct dohresponse {scalar_t__ size; int * memory; } ;
struct dnsprobe {long dohbuffer; struct Curl_easy* easy; scalar_t__ dohlen; struct dohresponse serverdoh; int dnstype; } ;
struct curl_slist {int dummy; } ;
struct TYPE_8__ {scalar_t__ verifystatus; scalar_t__ verifypeer; scalar_t__ verifyhost; } ;
struct TYPE_9__ {long fsslctx; long fsslctxp; scalar_t__ no_revoke; scalar_t__ certinfo; TYPE_3__ primary; scalar_t__ falsestart; } ;
struct TYPE_6__ {scalar_t__ verifypeer; scalar_t__ verifyhost; } ;
struct TYPE_7__ {scalar_t__ no_revoke; TYPE_1__ primary; } ;
struct TYPE_10__ {long* str; struct Curl_easy* dohfor; int fmultidone; TYPE_4__ ssl; TYPE_2__ proxy_ssl; scalar_t__ no_signal; scalar_t__ verbose; scalar_t__ doh_get; } ;
struct Curl_easy {TYPE_5__ set; } ;
typedef scalar_t__ DOHcode ;
typedef int DNStype ;
typedef scalar_t__ CURLcode ;
typedef int CURLM ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OPERATION_TIMEDOUT ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURLOPT_CAINFO ;
 int CURLOPT_CAPATH ;
 int CURLOPT_CERTINFO ;
 int CURLOPT_CRLFILE ;
 int CURLOPT_EGDSOCKET ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_NOSIGNAL ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_PROTOCOLS ;
 int CURLOPT_PROXY_CAINFO ;
 int CURLOPT_PROXY_CAPATH ;
 int CURLOPT_PROXY_CRLFILE ;
 int CURLOPT_PROXY_SSL_OPTIONS ;
 int CURLOPT_PROXY_SSL_VERIFYHOST ;
 int CURLOPT_PROXY_SSL_VERIFYPEER ;
 int CURLOPT_RANDOM_FILE ;
 int CURLOPT_SSL_CTX_DATA ;
 int CURLOPT_SSL_CTX_FUNCTION ;
 int CURLOPT_SSL_FALSESTART ;
 int CURLOPT_SSL_OPTIONS ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_SSL_VERIFYSTATUS ;
 int CURLOPT_TIMEOUT_MS ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 long CURLPROTO_HTTP ;
 long CURLPROTO_HTTPS ;
 long CURLSSLOPT_NO_REVOKE ;
 long CURL_HTTP_VERSION_2TLS ;
 scalar_t__ Curl_base64url_encode (struct Curl_easy*,char*,scalar_t__,char**,size_t*) ;
 int Curl_close (struct Curl_easy**) ;
 int Curl_doh_done ;
 scalar_t__ Curl_open (struct Curl_easy**) ;
 scalar_t__ Curl_timeleft (struct Curl_easy*,int *,int ) ;
 int ERROR_CHECK_SETOPT (int ,...) ;
 size_t STRING_SSL_CAFILE_ORIG ;
 size_t STRING_SSL_CAFILE_PROXY ;
 size_t STRING_SSL_CAPATH_ORIG ;
 size_t STRING_SSL_CAPATH_PROXY ;
 size_t STRING_SSL_CRLFILE_ORIG ;
 size_t STRING_SSL_CRLFILE_PROXY ;
 size_t STRING_SSL_EGDSOCKET ;
 size_t STRING_SSL_RANDOM_FILE ;
 int TRUE ;
 char* aprintf (char*,char const*,char*) ;
 scalar_t__ curl_multi_add_handle (int *,struct Curl_easy*) ;
 scalar_t__ doh_encode (char const*,int ,long,int,scalar_t__*) ;
 long doh_write_cb ;
 int failf (struct Curl_easy*,char*,scalar_t__) ;
 int free (char*) ;

__attribute__((used)) static CURLcode dohprobe(struct Curl_easy *data,
                         struct dnsprobe *p, DNStype dnstype,
                         const char *host,
                         const char *url, CURLM *multi,
                         struct curl_slist *headers)
{
  struct Curl_easy *doh = ((void*)0);
  char *nurl = ((void*)0);
  CURLcode result = CURLE_OK;
  timediff_t timeout_ms;
  DOHcode d = doh_encode(host, dnstype, p->dohbuffer, sizeof(p->dohbuffer),
                         &p->dohlen);
  if(d) {
    failf(data, "Failed to encode DOH packet [%d]\n", d);
    return CURLE_OUT_OF_MEMORY;
  }

  p->dnstype = dnstype;
  p->serverdoh.memory = ((void*)0);


  p->serverdoh.size = 0;




  if(data->set.doh_get) {
    char *b64;
    size_t b64len;
    result = Curl_base64url_encode(data, (char *)p->dohbuffer, p->dohlen,
                                   &b64, &b64len);
    if(result)
      goto error;
    nurl = aprintf("%s?dns=%s", url, b64);
    free(b64);
    if(!nurl) {
      result = CURLE_OUT_OF_MEMORY;
      goto error;
    }
    url = nurl;
  }

  timeout_ms = Curl_timeleft(data, ((void*)0), TRUE);
  if(timeout_ms <= 0) {
    result = CURLE_OPERATION_TIMEDOUT;
    goto error;
  }

  result = Curl_open(&doh);
  if(!result) {


    struct dohresponse *resp = &p->serverdoh;
    ERROR_CHECK_SETOPT(CURLOPT_URL, url);
    ERROR_CHECK_SETOPT(CURLOPT_WRITEFUNCTION, doh_write_cb);
    ERROR_CHECK_SETOPT(CURLOPT_WRITEDATA, resp);
    if(!data->set.doh_get) {
      ERROR_CHECK_SETOPT(CURLOPT_POSTFIELDS, p->dohbuffer);
      ERROR_CHECK_SETOPT(CURLOPT_POSTFIELDSIZE, (long)p->dohlen);
    }
    ERROR_CHECK_SETOPT(CURLOPT_HTTPHEADER, headers);





    ERROR_CHECK_SETOPT(CURLOPT_PROTOCOLS, CURLPROTO_HTTPS);




    ERROR_CHECK_SETOPT(CURLOPT_TIMEOUT_MS, (long)timeout_ms);
    if(data->set.verbose)
      ERROR_CHECK_SETOPT(CURLOPT_VERBOSE, 1L);
    if(data->set.no_signal)
      ERROR_CHECK_SETOPT(CURLOPT_NOSIGNAL, 1L);



    if(data->set.ssl.falsestart)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_FALSESTART, 1L);
    if(data->set.ssl.primary.verifyhost)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_VERIFYHOST, 2L);
    if(data->set.proxy_ssl.primary.verifyhost)
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_SSL_VERIFYHOST, 2L);
    if(data->set.ssl.primary.verifypeer)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_VERIFYPEER, 1L);
    if(data->set.proxy_ssl.primary.verifypeer)
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_SSL_VERIFYPEER, 1L);
    if(data->set.ssl.primary.verifystatus)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_VERIFYSTATUS, 1L);
    if(data->set.str[STRING_SSL_CAFILE_ORIG]) {
      ERROR_CHECK_SETOPT(CURLOPT_CAINFO,
        data->set.str[STRING_SSL_CAFILE_ORIG]);
    }
    if(data->set.str[STRING_SSL_CAFILE_PROXY]) {
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_CAINFO,
        data->set.str[STRING_SSL_CAFILE_PROXY]);
    }
    if(data->set.str[STRING_SSL_CAPATH_ORIG]) {
      ERROR_CHECK_SETOPT(CURLOPT_CAPATH,
        data->set.str[STRING_SSL_CAPATH_ORIG]);
    }
    if(data->set.str[STRING_SSL_CAPATH_PROXY]) {
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_CAPATH,
        data->set.str[STRING_SSL_CAPATH_PROXY]);
    }
    if(data->set.str[STRING_SSL_CRLFILE_ORIG]) {
      ERROR_CHECK_SETOPT(CURLOPT_CRLFILE,
        data->set.str[STRING_SSL_CRLFILE_ORIG]);
    }
    if(data->set.str[STRING_SSL_CRLFILE_PROXY]) {
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_CRLFILE,
        data->set.str[STRING_SSL_CRLFILE_PROXY]);
    }
    if(data->set.ssl.certinfo)
      ERROR_CHECK_SETOPT(CURLOPT_CERTINFO, 1L);
    if(data->set.str[STRING_SSL_RANDOM_FILE]) {
      ERROR_CHECK_SETOPT(CURLOPT_RANDOM_FILE,
        data->set.str[STRING_SSL_RANDOM_FILE]);
    }
    if(data->set.str[STRING_SSL_EGDSOCKET]) {
      ERROR_CHECK_SETOPT(CURLOPT_EGDSOCKET,
        data->set.str[STRING_SSL_EGDSOCKET]);
    }
    if(data->set.ssl.no_revoke)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_OPTIONS, CURLSSLOPT_NO_REVOKE);
    if(data->set.proxy_ssl.no_revoke)
      ERROR_CHECK_SETOPT(CURLOPT_PROXY_SSL_OPTIONS, CURLSSLOPT_NO_REVOKE);
    if(data->set.ssl.fsslctx)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_CTX_FUNCTION, data->set.ssl.fsslctx);
    if(data->set.ssl.fsslctxp)
      ERROR_CHECK_SETOPT(CURLOPT_SSL_CTX_DATA, data->set.ssl.fsslctxp);

    doh->set.fmultidone = Curl_doh_done;
    doh->set.dohfor = data;
    p->easy = doh;


    if(curl_multi_add_handle(multi, doh))
      goto error;
  }
  else
    goto error;
  free(nurl);
  return CURLE_OK;

  error:
  free(nurl);
  Curl_close(&doh);
  return result;
}

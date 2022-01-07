
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_7__ {scalar_t__ te; scalar_t__ host; } ;
struct TYPE_6__ {scalar_t__ authneg; int tunnel_proxy; scalar_t__ httpproxy; } ;
struct connectdata {int httpversion; TYPE_5__ host; TYPE_2__ allocptr; TYPE_1__ bits; struct Curl_easy* data; } ;
struct TYPE_9__ {scalar_t__ first_host; scalar_t__ this_is_a_follow; } ;
struct TYPE_8__ {scalar_t__ httpreq; int allow_auth_to_other_hosts; struct curl_slist* headers; struct curl_slist* proxyheaders; int sep_headers; } ;
struct Curl_easy {TYPE_4__ state; TYPE_3__ set; } ;
typedef enum proxy_use { ____Placeholder_proxy_use } proxy_use ;
typedef int Curl_send_buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int Curl_add_buffer_free (int **) ;
 scalar_t__ Curl_add_bufferf (int **,char*,char*) ;



 scalar_t__ HTTPREQ_POST_FORM ;
 scalar_t__ HTTPREQ_POST_MIME ;
 scalar_t__ ISSPACE (char) ;
 scalar_t__ checkprefix (char*,char*) ;
 int free (char*) ;
 int strcasecompare (scalar_t__,int ) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;

CURLcode Curl_add_custom_headers(struct connectdata *conn,
                                 bool is_connect,
                                 Curl_send_buffer *req_buffer)
{
  char *ptr;
  struct curl_slist *h[2];
  struct curl_slist *headers;
  int numlists = 1;
  struct Curl_easy *data = conn->data;
  int i;

  enum proxy_use proxy;

  if(is_connect)
    proxy = 130;
  else
    proxy = conn->bits.httpproxy && !conn->bits.tunnel_proxy?
      129:128;

  switch(proxy) {
  case 128:
    h[0] = data->set.headers;
    break;
  case 129:
    h[0] = data->set.headers;
    if(data->set.sep_headers) {
      h[1] = data->set.proxyheaders;
      numlists++;
    }
    break;
  case 130:
    if(data->set.sep_headers)
      h[0] = data->set.proxyheaders;
    else
      h[0] = data->set.headers;
    break;
  }


  for(i = 0; i < numlists; i++) {
    headers = h[i];

    while(headers) {
      char *semicolonp = ((void*)0);
      ptr = strchr(headers->data, ':');
      if(!ptr) {
        char *optr;

        ptr = strchr(headers->data, ';');
        if(ptr) {
          optr = ptr;
          ptr++;
          while(*ptr && ISSPACE(*ptr))
            ptr++;

          if(*ptr) {

            optr = ((void*)0);
          }
          else {
            if(*(--ptr) == ';') {

              semicolonp = strdup(headers->data);
              if(!semicolonp) {
                Curl_add_buffer_free(&req_buffer);
                return CURLE_OUT_OF_MEMORY;
              }

              semicolonp[ptr - headers->data] = ':';

              optr = &semicolonp [ptr - headers->data];
            }
          }
          ptr = optr;
        }
      }
      if(ptr) {


        ptr++;
        while(*ptr && ISSPACE(*ptr))
          ptr++;

        if(*ptr || semicolonp) {

          CURLcode result = CURLE_OK;
          char *compare = semicolonp ? semicolonp : headers->data;

          if(conn->allocptr.host &&


             checkprefix("Host:", compare))
            ;
          else if(data->set.httpreq == HTTPREQ_POST_FORM &&

                  checkprefix("Content-Type:", compare))
            ;
          else if(data->set.httpreq == HTTPREQ_POST_MIME &&

                  checkprefix("Content-Type:", compare))
            ;
          else if(conn->bits.authneg &&


                  checkprefix("Content-Length:", compare))
            ;
          else if(conn->allocptr.te &&


                  checkprefix("Connection:", compare))
            ;
          else if((conn->httpversion >= 20) &&
                  checkprefix("Transfer-Encoding:", compare))

            ;
          else if((checkprefix("Authorization:", compare) ||
                   checkprefix("Cookie:", compare)) &&


                  (data->state.this_is_a_follow &&
                   data->state.first_host &&
                   !data->set.allow_auth_to_other_hosts &&
                   !strcasecompare(data->state.first_host, conn->host.name)))
            ;
          else {
            result = Curl_add_bufferf(&req_buffer, "%s\r\n", compare);
          }
          if(semicolonp)
            free(semicolonp);
          if(result)
            return result;
        }
      }
      headers = headers->next;
    }
  }

  return CURLE_OK;
}

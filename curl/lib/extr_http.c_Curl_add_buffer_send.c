
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ proxytype; } ;
struct connectdata {int httpversion; TYPE_2__ http_proxy; TYPE_1__* handler; int * sock; struct Curl_easy* data; } ;
struct TYPE_14__ {char* postdata; long postsize; void* fread_in; scalar_t__ fread_func; } ;
struct HTTP {char* postdata; long postsize; int sending; TYPE_7__* send_buffer; TYPE_5__ backup; } ;
struct TYPE_15__ {char* ulbuf; void* in; scalar_t__ fread_func; } ;
struct TYPE_13__ {size_t writebytecount; struct HTTP* protop; } ;
struct TYPE_12__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_6__ state; TYPE_4__ req; TYPE_3__ set; } ;
typedef size_t ssize_t ;
typedef int curl_socket_t ;
typedef scalar_t__ curl_read_callback ;
typedef long curl_off_t ;
struct TYPE_16__ {char* buffer; size_t size_used; } ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_7__ Curl_send_buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_SEND_ERROR ;
 int CURLINFO_DATA_OUT ;
 int CURLINFO_HEADER_OUT ;
 size_t CURLMIN (size_t,int ) ;
 scalar_t__ CURLPROXY_HTTPS ;
 int CURL_MAX_WRITE_SIZE ;
 int Curl_add_buffer_free (TYPE_7__**) ;
 scalar_t__ Curl_convert_to_network (struct Curl_easy*,char*,size_t) ;
 int Curl_debug (struct Curl_easy*,int ,char*,size_t) ;
 scalar_t__ Curl_get_upload_buffer (struct Curl_easy*) ;
 int Curl_pgrsSetUploadCounter (struct Curl_easy*,size_t) ;
 scalar_t__ Curl_write (struct connectdata*,int ,char*,size_t,size_t*) ;
 int DEBUGASSERT (int) ;
 int HTTPSEND_BODY ;
 int HTTPSEND_REQUEST ;
 int PROTOPT_SSL ;
 int SECONDARYSOCKET ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ readmoredata ;

CURLcode Curl_add_buffer_send(Curl_send_buffer **inp,
                              struct connectdata *conn,



                              curl_off_t *bytes_written,


                              size_t included_body_bytes,
                              int socketindex)
{
  ssize_t amount;
  CURLcode result;
  char *ptr;
  size_t size;
  struct Curl_easy *data = conn->data;
  struct HTTP *http = data->req.protop;
  size_t sendsize;
  curl_socket_t sockfd;
  size_t headersize;
  Curl_send_buffer *in = *inp;

  DEBUGASSERT(socketindex <= SECONDARYSOCKET);

  sockfd = conn->sock[socketindex];




  ptr = in->buffer;
  size = in->size_used;

  headersize = size - included_body_bytes;


  DEBUGASSERT(size > included_body_bytes);

  result = Curl_convert_to_network(data, ptr, headersize);

  if(result) {

    Curl_add_buffer_free(inp);
    return result;
  }

  if((conn->handler->flags & PROTOPT_SSL ||
     conn->http_proxy.proxytype == CURLPROXY_HTTPS)
     && conn->httpversion != 20) {






    sendsize = CURLMIN(size, CURL_MAX_WRITE_SIZE);







    result = Curl_get_upload_buffer(data);
    if(result) {

      Curl_add_buffer_free(&in);
      return result;
    }
    memcpy(data->state.ulbuf, ptr, sendsize);
    ptr = data->state.ulbuf;
  }
  else
    sendsize = size;

  result = Curl_write(conn, sockfd, ptr, sendsize, &amount);

  if(!result) {






    size_t headlen = (size_t)amount>headersize ? headersize : (size_t)amount;
    size_t bodylen = amount - headlen;

    if(data->set.verbose) {

      Curl_debug(data, CURLINFO_HEADER_OUT, ptr, headlen);
      if(bodylen) {


        Curl_debug(data, CURLINFO_DATA_OUT,
                   ptr + headlen, bodylen);
      }
    }




    *bytes_written += (long)amount;

    if(http) {


      data->req.writebytecount += bodylen;
      Curl_pgrsSetUploadCounter(data, data->req.writebytecount);

      if((size_t)amount != size) {




        size -= amount;

        ptr = in->buffer + amount;


        http->backup.fread_func = data->state.fread_func;
        http->backup.fread_in = data->state.in;
        http->backup.postdata = http->postdata;
        http->backup.postsize = http->postsize;


        data->state.fread_func = (curl_read_callback)readmoredata;
        data->state.in = (void *)conn;
        http->postdata = ptr;
        http->postsize = (curl_off_t)size;

        http->send_buffer = in;
        http->sending = HTTPSEND_REQUEST;

        return CURLE_OK;
      }
      http->sending = HTTPSEND_BODY;

    }
    else {
      if((size_t)amount != size)







        return CURLE_SEND_ERROR;
    }
  }
  Curl_add_buffer_free(&in);

  return result;
}

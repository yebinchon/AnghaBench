
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct curl_slist {int dummy; } ;
struct connectdata {TYPE_1__* handler; struct Curl_easy* data; } ;
struct SingleRequest {scalar_t__ upload_fromhere; void* upload_done; scalar_t__ upload_chunky; int forbidchunk; int keepon; struct HTTP* protop; } ;
struct HTTP {scalar_t__ sending; } ;
struct TYPE_5__ {int (* trailer_callback ) (struct curl_slist**,int *) ;scalar_t__ prefer_ascii; int * trailer_data; scalar_t__ crlf; } ;
struct TYPE_6__ {scalar_t__ trailers_state; size_t (* fread_func ) (scalar_t__,int,size_t,void*) ;int trailers_buf; void* in; scalar_t__ trailers_bytes_sent; } ;
struct Curl_easy {struct SingleRequest req; TYPE_2__ set; TYPE_3__ state; } ;
typedef int hexbuffer ;
typedef size_t (* curl_read_callback ) (scalar_t__,int,size_t,void*) ;
struct TYPE_4__ {int protocol; int flags; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_ABORTED_BY_CALLBACK ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_READ_ERROR ;
 int CURLPROTO_RTSP ;
 size_t CURL_READFUNC_ABORT ;
 size_t CURL_READFUNC_PAUSE ;
 int CURL_TRAILERFUNC_OK ;
 int Curl_add_buffer_free (int *) ;
 int Curl_add_buffer_init () ;
 scalar_t__ Curl_convert_to_network (struct Curl_easy*,scalar_t__,size_t) ;
 scalar_t__ Curl_http_compile_trailers (struct curl_slist*,int *,struct Curl_easy*) ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int Curl_trailers_left (struct Curl_easy*) ;
 size_t Curl_trailers_read (scalar_t__,int,size_t,void*) ;
 int FALSE ;
 scalar_t__ HTTPSEND_REQUEST ;
 int KEEP_SEND_PAUSE ;
 int PROTOPT_NONETWORK ;
 int PROTO_FAMILY_HTTP ;
 scalar_t__ TRAILERS_DONE ;
 scalar_t__ TRAILERS_INITIALIZED ;
 scalar_t__ TRAILERS_NONE ;
 scalar_t__ TRAILERS_SENDING ;
 void* TRUE ;
 int curl_slist_free_all (struct curl_slist*) ;
 int failf (struct Curl_easy*,char*) ;
 int infof (struct Curl_easy*,char*) ;
 int memcpy (scalar_t__,char const*,size_t) ;
 int msnprintf (char*,int,char*,size_t,char const*) ;
 size_t strlen (char const*) ;
 int stub1 (struct curl_slist**,int *) ;

CURLcode Curl_fillreadbuffer(struct connectdata *conn, size_t bytes,
                             size_t *nreadp)
{
  struct Curl_easy *data = conn->data;
  size_t buffersize = bytes;
  size_t nread;

  curl_read_callback readfunc = ((void*)0);
  void *extra_data = ((void*)0);
  if(data->state.trailers_state == TRAILERS_INITIALIZED) {
    struct curl_slist *trailers = ((void*)0);
    CURLcode result;
    int trailers_ret_code;



    infof(data,
          "Moving trailers state machine from initialized to sending.\n");
    data->state.trailers_state = TRAILERS_SENDING;
    data->state.trailers_buf = Curl_add_buffer_init();
    if(!data->state.trailers_buf) {
      failf(data, "Unable to allocate trailing headers buffer !");
      return CURLE_OUT_OF_MEMORY;
    }
    data->state.trailers_bytes_sent = 0;
    Curl_set_in_callback(data, 1);
    trailers_ret_code = data->set.trailer_callback(&trailers,
                                                   data->set.trailer_data);
    Curl_set_in_callback(data, 0);
    if(trailers_ret_code == CURL_TRAILERFUNC_OK) {
      result = Curl_http_compile_trailers(trailers, &data->state.trailers_buf,
                                          data);
    }
    else {
      failf(data, "operation aborted by trailing headers callback");
      *nreadp = 0;
      result = CURLE_ABORTED_BY_CALLBACK;
    }
    if(result) {
      Curl_add_buffer_free(&data->state.trailers_buf);
      curl_slist_free_all(trailers);
      return result;
    }
    infof(data, "Successfully compiled trailers.\r\n");
    curl_slist_free_all(trailers);
  }




  if(data->req.upload_chunky &&
     data->state.trailers_state == TRAILERS_NONE) {

    buffersize -= (8 + 2 + 2);
    data->req.upload_fromhere += (8 + 2);
  }


  if(data->state.trailers_state == TRAILERS_SENDING) {






    readfunc = Curl_trailers_read;
    extra_data = (void *)data;
  }
  else

  {
    readfunc = data->state.fread_func;
    extra_data = data->state.in;
  }

  Curl_set_in_callback(data, 1);
  nread = readfunc(data->req.upload_fromhere, 1,
                   buffersize, extra_data);
  Curl_set_in_callback(data, 0);

  if(nread == CURL_READFUNC_ABORT) {
    failf(data, "operation aborted by callback");
    *nreadp = 0;
    return CURLE_ABORTED_BY_CALLBACK;
  }
  if(nread == CURL_READFUNC_PAUSE) {
    struct SingleRequest *k = &data->req;

    if(conn->handler->flags & PROTOPT_NONETWORK) {



      failf(data, "Read callback asked for PAUSE when not supported!");
      return CURLE_READ_ERROR;
    }


    k->keepon |= KEEP_SEND_PAUSE;
    if(data->req.upload_chunky) {

      data->req.upload_fromhere -= (8 + 2);
    }
    *nreadp = 0;

    return CURLE_OK;
  }
  else if(nread > buffersize) {

    *nreadp = 0;
    failf(data, "read function returned funny value");
    return CURLE_READ_ERROR;
  }

  if(!data->req.forbidchunk && data->req.upload_chunky) {
    bool added_crlf = FALSE;
    int hexlen = 0;
    const char *endofline_native;
    const char *endofline_network;

    if(



       (data->set.crlf)) {

      endofline_native = "\n";
      endofline_network = "\x0a";
    }
    else {
      endofline_native = "\r\n";
      endofline_network = "\x0d\x0a";
    }


    if(data->state.trailers_state != TRAILERS_SENDING) {
      char hexbuffer[11] = "";
      hexlen = msnprintf(hexbuffer, sizeof(hexbuffer),
                         "%zx%s", nread, endofline_native);


      data->req.upload_fromhere -= hexlen;
      nread += hexlen;


      memcpy(data->req.upload_fromhere, hexbuffer, hexlen);




      if((nread-hexlen) == 0 &&
          data->set.trailer_callback != ((void*)0) &&
          data->state.trailers_state == TRAILERS_NONE) {
        data->state.trailers_state = TRAILERS_INITIALIZED;
      }
      else

      {
        memcpy(data->req.upload_fromhere + nread,
               endofline_network,
               strlen(endofline_network));
        added_crlf = TRUE;
      }
    }
    if(data->state.trailers_state == TRAILERS_SENDING &&
       !Curl_trailers_left(data)) {
      Curl_add_buffer_free(&data->state.trailers_buf);
      data->state.trailers_state = TRAILERS_DONE;
      data->set.trailer_data = ((void*)0);
      data->set.trailer_callback = ((void*)0);

      data->req.upload_done = TRUE;
      infof(data, "Signaling end of chunked upload after trailers.\n");
    }
    else

      if((nread - hexlen) == 0 &&
         data->state.trailers_state != TRAILERS_INITIALIZED) {

        data->req.upload_done = TRUE;
        infof(data,
              "Signaling end of chunked upload via terminating chunk.\n");
      }

    if(added_crlf)
      nread += strlen(endofline_network);
  }
  *nreadp = nread;

  return CURLE_OK;
}

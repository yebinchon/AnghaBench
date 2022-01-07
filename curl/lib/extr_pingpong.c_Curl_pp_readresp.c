
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pingpong {size_t nread_resp; char* linestart_resp; char* cache; int cache_size; void* pending_resp; scalar_t__ (* endofresp ) (struct connectdata*,char*,int,int*) ;struct connectdata* conn; } ;
struct connectdata {int data_prot; int sec_complete; struct Curl_easy* data; } ;
struct TYPE_6__ {int buffer_size; scalar_t__ verbose; } ;
struct TYPE_5__ {long headerbytecount; } ;
struct TYPE_4__ {char* buffer; } ;
struct Curl_easy {TYPE_3__ set; TYPE_2__ req; TYPE_1__ state; } ;
typedef int ssize_t ;
typedef enum protection_level { ____Placeholder_protection_level } protection_level ;
typedef int curl_socket_t ;
typedef scalar_t__ CURLcode ;


 int CLIENTWRITE_HEADER ;
 scalar_t__ CURLE_AGAIN ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_RECV_ERROR ;
 int CURLINFO_HEADER_IN ;
 scalar_t__ Curl_client_write (struct connectdata*,int ,char*,int) ;
 scalar_t__ Curl_convert_from_network (struct Curl_easy*,char*,int) ;
 int Curl_debug (struct Curl_easy*,int ,char*,size_t) ;
 scalar_t__ Curl_read (struct connectdata*,int ,char*,size_t,int*) ;
 int DEBUGASSERT (int) ;
 int DEBUGF (int ) ;
 void* FALSE ;
 int PROT_CLEAR ;
 int PROT_LAST ;
 int PROT_NONE ;
 int TRUE ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 int infof (struct Curl_easy*,char*,int) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int memmove (char* const,char*,size_t) ;
 scalar_t__ stub1 (struct connectdata*,char*,int,int*) ;

CURLcode Curl_pp_readresp(curl_socket_t sockfd,
                          struct pingpong *pp,
                          int *code,
                          size_t *size)
{
  ssize_t perline;
  bool keepon = TRUE;
  ssize_t gotbytes;
  char *ptr;
  struct connectdata *conn = pp->conn;
  struct Curl_easy *data = conn->data;
  char * const buf = data->state.buffer;
  CURLcode result = CURLE_OK;

  *code = 0;
  *size = 0;

  ptr = buf + pp->nread_resp;


  perline = (ssize_t)(ptr-pp->linestart_resp);

  while((pp->nread_resp < (size_t)data->set.buffer_size) &&
        (keepon && !result)) {

    if(pp->cache) {







      if((ptr + pp->cache_size) > (buf + data->set.buffer_size + 1)) {
        failf(data, "cached response data too big to handle");
        return CURLE_RECV_ERROR;
      }
      memcpy(ptr, pp->cache, pp->cache_size);
      gotbytes = (ssize_t)pp->cache_size;
      free(pp->cache);
      pp->cache = ((void*)0);
      pp->cache_size = 0;
    }
    else {




      DEBUGASSERT((ptr + data->set.buffer_size - pp->nread_resp) <=
                  (buf + data->set.buffer_size + 1));
      result = Curl_read(conn, sockfd, ptr,
                         data->set.buffer_size - pp->nread_resp,
                         &gotbytes);




      if(result == CURLE_AGAIN)
        return CURLE_OK;

      if(!result && (gotbytes > 0))

        result = Curl_convert_from_network(data, ptr, gotbytes);


      if(result)

        keepon = FALSE;
    }

    if(!keepon)
      ;
    else if(gotbytes <= 0) {
      keepon = FALSE;
      result = CURLE_RECV_ERROR;
      failf(data, "response reading failed");
    }
    else {



      ssize_t i;
      ssize_t clipamount = 0;
      bool restart = FALSE;

      data->req.headerbytecount += (long)gotbytes;

      pp->nread_resp += gotbytes;
      for(i = 0; i < gotbytes; ptr++, i++) {
        perline++;
        if(*ptr == '\n') {







            if(data->set.verbose)
              Curl_debug(data, CURLINFO_HEADER_IN,
                         pp->linestart_resp, (size_t)perline);






          result = Curl_client_write(conn, CLIENTWRITE_HEADER,
                                     pp->linestart_resp, perline);
          if(result)
            return result;

          if(pp->endofresp(conn, pp->linestart_resp, perline, code)) {


            size_t n = ptr - pp->linestart_resp;
            memmove(buf, pp->linestart_resp, n);
            buf[n] = 0;
            keepon = FALSE;
            pp->linestart_resp = ptr + 1;
            i++;

            *size = pp->nread_resp;
            pp->nread_resp = 0;
            break;
          }
          perline = 0;
          pp->linestart_resp = ptr + 1;
        }
      }

      if(!keepon && (i != gotbytes)) {




        clipamount = gotbytes - i;
        restart = TRUE;
        DEBUGF(infof(data, "Curl_pp_readresp_ %d bytes of trailing "
                     "server response left\n",
                     (int)clipamount));
      }
      else if(keepon) {

        if((perline == gotbytes) && (gotbytes > data->set.buffer_size/2)) {



          infof(data, "Excessive server response line length received, "
                "%zd bytes. Stripping\n", gotbytes);
          restart = TRUE;



          clipamount = 40;
        }
        else if(pp->nread_resp > (size_t)data->set.buffer_size/2) {



          clipamount = perline;
          restart = TRUE;
        }
      }
      else if(i == gotbytes)
        restart = TRUE;

      if(clipamount) {
        pp->cache_size = clipamount;
        pp->cache = malloc(pp->cache_size);
        if(pp->cache)
          memcpy(pp->cache, pp->linestart_resp, pp->cache_size);
        else
          return CURLE_OUT_OF_MEMORY;
      }
      if(restart) {


        pp->nread_resp = 0;
        ptr = pp->linestart_resp = buf;
        perline = 0;
      }

    }

  }

  pp->pending_resp = FALSE;

  return result;
}

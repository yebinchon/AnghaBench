
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct pingpong {scalar_t__ sendleft; size_t sendsize; char* sendthis; int response; struct connectdata* conn; } ;
struct connectdata {int data_prot; struct Curl_easy* data; int * sock; } ;
struct TYPE_2__ {scalar_t__ verbose; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef scalar_t__ ssize_t ;
typedef enum protection_level { ____Placeholder_protection_level } protection_level ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_SEND_ERROR ;
 int CURLINFO_HEADER_OUT ;
 scalar_t__ Curl_convert_to_network (struct Curl_easy*,char*,size_t) ;
 int Curl_debug (struct Curl_easy*,int ,char*,size_t) ;
 int Curl_now () ;
 int Curl_pp_init (struct pingpong*) ;
 scalar_t__ Curl_write (struct connectdata*,int ,char*,size_t,scalar_t__*) ;
 int DEBUGASSERT (int) ;
 size_t FIRSTSOCKET ;
 int PROT_CMD ;
 int PROT_LAST ;
 int PROT_NONE ;
 char* aprintf (char*,char const*) ;
 int free (char*) ;
 size_t strlen (char*) ;
 char* vaprintf (char*,int ) ;

CURLcode Curl_pp_vsendf(struct pingpong *pp,
                        const char *fmt,
                        va_list args)
{
  ssize_t bytes_written;
  size_t write_len;
  char *fmt_crlf;
  char *s;
  CURLcode result;
  struct connectdata *conn = pp->conn;
  struct Curl_easy *data;





  DEBUGASSERT(pp->sendleft == 0);
  DEBUGASSERT(pp->sendsize == 0);
  DEBUGASSERT(pp->sendthis == ((void*)0));

  if(!conn)

    return CURLE_SEND_ERROR;

  data = conn->data;

  fmt_crlf = aprintf("%s\r\n", fmt);
  if(!fmt_crlf)
    return CURLE_OUT_OF_MEMORY;

  s = vaprintf(fmt_crlf, args);
  free(fmt_crlf);
  if(!s)
    return CURLE_OUT_OF_MEMORY;

  bytes_written = 0;
  write_len = strlen(s);

  Curl_pp_init(pp);

  result = Curl_convert_to_network(data, s, write_len);

  if(result) {
    free(s);
    return result;
  }




  result = Curl_write(conn, conn->sock[FIRSTSOCKET], s, write_len,
                     &bytes_written);






  if(result) {
    free(s);
    return result;
  }

  if(conn->data->set.verbose)
    Curl_debug(conn->data, CURLINFO_HEADER_OUT, s, (size_t)bytes_written);

  if(bytes_written != (ssize_t)write_len) {

    pp->sendthis = s;
    pp->sendsize = write_len;
    pp->sendleft = write_len - bytes_written;
  }
  else {
    free(s);
    pp->sendthis = ((void*)0);
    pp->sendleft = pp->sendsize = 0;
    pp->response = Curl_now();
  }

  return CURLE_OK;
}

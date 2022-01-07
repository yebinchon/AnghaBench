
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct connectdata {int data_prot; TYPE_2__* data; int * sock; } ;
typedef scalar_t__ ssize_t ;
typedef int s ;
typedef enum protection_level { ____Placeholder_protection_level } protection_level ;
struct TYPE_4__ {scalar_t__ verbose; } ;
struct TYPE_5__ {TYPE_1__ set; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_BAD_FUNCTION_ARGUMENT ;
 scalar_t__ CURLE_OK ;
 int CURLINFO_HEADER_OUT ;
 scalar_t__ Curl_convert_to_network (TYPE_2__*,char*,size_t) ;
 int Curl_debug (TYPE_2__*,int ,char*,size_t) ;
 scalar_t__ Curl_write (struct connectdata*,int ,char*,size_t,scalar_t__*) ;
 int DEBUGASSERT (int) ;
 size_t FIRSTSOCKET ;
 int PROT_CMD ;
 int PROT_LAST ;
 int PROT_NONE ;
 int SBUF_SIZE ;
 int memcpy (char**,char const*,size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

CURLcode Curl_ftpsend(struct connectdata *conn, const char *cmd)
{
  ssize_t bytes_written;

  char s[1024];
  size_t write_len;
  char *sptr = s;
  CURLcode result = CURLE_OK;




  if(!cmd)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  write_len = strlen(cmd);
  if(!write_len || write_len > (sizeof(s) -3))
    return CURLE_BAD_FUNCTION_ARGUMENT;

  memcpy(&s, cmd, write_len);
  strcpy(&s[write_len], "\r\n");
  write_len += 2;
  bytes_written = 0;

  result = Curl_convert_to_network(conn->data, s, write_len);

  if(result)
    return result;

  for(;;) {



    result = Curl_write(conn, conn->sock[FIRSTSOCKET], sptr, write_len,
                        &bytes_written);





    if(result)
      break;

    if(conn->data->set.verbose)
      Curl_debug(conn->data, CURLINFO_HEADER_OUT, sptr, (size_t)bytes_written);

    if(bytes_written != (ssize_t)write_len) {
      write_len -= bytes_written;
      sptr += bytes_written;
    }
    else
      break;
  }

  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_slist {struct curl_slist* next; int data; } ;
struct TYPE_2__ {scalar_t__ crlf; scalar_t__ prefer_ascii; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef int Curl_send_buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_add_buffer (int **,char const*,int ) ;
 scalar_t__ Curl_add_bufferf (int **,char*,int ,char const*) ;
 int infof (struct Curl_easy*,char*) ;
 char* strchr (int ,char) ;
 int strlen (char const*) ;

CURLcode Curl_http_compile_trailers(struct curl_slist *trailers,
                                    Curl_send_buffer **buffer,
                                    struct Curl_easy *handle)
{
  char *ptr = ((void*)0);
  CURLcode result = CURLE_OK;
  const char *endofline_native = ((void*)0);
  const char *endofline_network = ((void*)0);

  if(



     (handle->set.crlf)) {

    endofline_native = "\n";
    endofline_network = "\x0a";
  }
  else {
    endofline_native = "\r\n";
    endofline_network = "\x0d\x0a";
  }

  while(trailers) {

    ptr = strchr(trailers->data, ':');
    if(ptr && *(ptr + 1) == ' ') {
      result = Curl_add_bufferf(buffer, "%s%s", trailers->data,
                                endofline_native);
      if(result)
        return result;
    }
    else
      infof(handle, "Malformatted trailing header ! Skipping trailer.");
    trailers = trailers->next;
  }
  result = Curl_add_buffer(buffer, endofline_network,
                           strlen(endofline_network));
  return result;
}

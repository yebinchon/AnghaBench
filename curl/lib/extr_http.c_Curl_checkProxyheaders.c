
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_3__ {scalar_t__ proxy; } ;
struct connectdata {TYPE_1__ bits; struct Curl_easy* data; } ;
struct TYPE_4__ {struct curl_slist* headers; struct curl_slist* proxyheaders; scalar_t__ sep_headers; } ;
struct Curl_easy {TYPE_2__ set; } ;


 scalar_t__ Curl_headersep (char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecompare (char*,char const*,size_t) ;

char *Curl_checkProxyheaders(const struct connectdata *conn,
                             const char *thisheader)
{
  struct curl_slist *head;
  size_t thislen = strlen(thisheader);
  struct Curl_easy *data = conn->data;

  for(head = (conn->bits.proxy && data->set.sep_headers) ?
        data->set.proxyheaders : data->set.headers;
      head; head = head->next) {
    if(strncasecompare(head->data, thisheader, thislen) &&
       Curl_headersep(head->data[thislen]))
      return head->data;
  }

  return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_slist {char* data; struct curl_slist* next; } ;
struct TYPE_2__ {struct curl_slist* http200aliases; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef scalar_t__ statusline ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_convert_from_network (struct Curl_easy*,char*,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ STATUS_BAD ;
 scalar_t__ STATUS_DONE ;
 scalar_t__ STATUS_UNKNOWN ;
 scalar_t__ checkprefixmax (char*,char const*,size_t) ;
 int failf (struct Curl_easy*,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static statusline
checkhttpprefix(struct Curl_easy *data,
                const char *s, size_t len)
{
  struct curl_slist *head = data->set.http200aliases;
  statusline rc = STATUS_BAD;
  statusline onmatch = len >= 5? STATUS_DONE : STATUS_UNKNOWN;
  while(head) {
    if(checkprefixmax(head->data, s, len)) {
      rc = onmatch;
      break;
    }
    head = head->next;
  }

  if((rc != STATUS_DONE) && (checkprefixmax("HTTP/", s, len)))
    rc = onmatch;




  return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct curl_llist_element {struct Curl_message* ptr; } ;
struct TYPE_3__ {struct curl_llist_element* head; } ;
struct Curl_multi {TYPE_1__ msglist; int in_callback; } ;
struct Curl_message {int extmsg; } ;
typedef int CURLMsg ;


 scalar_t__ Curl_llist_count (TYPE_1__*) ;
 int Curl_llist_remove (TYPE_1__*,struct curl_llist_element*,int *) ;
 scalar_t__ GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 int curlx_uztosi (scalar_t__) ;

CURLMsg *curl_multi_info_read(struct Curl_multi *multi, int *msgs_in_queue)
{
  struct Curl_message *msg;

  *msgs_in_queue = 0;

  if(GOOD_MULTI_HANDLE(multi) &&
     !multi->in_callback &&
     Curl_llist_count(&multi->msglist)) {

    struct curl_llist_element *e;


    e = multi->msglist.head;

    msg = e->ptr;


    Curl_llist_remove(&multi->msglist, e, ((void*)0));

    *msgs_in_queue = curlx_uztosi(Curl_llist_count(&multi->msglist));

    return &msg->extmsg;
  }
  return ((void*)0);
}

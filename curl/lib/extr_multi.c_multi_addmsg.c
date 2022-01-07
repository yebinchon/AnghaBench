
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; } ;
struct Curl_multi {TYPE_1__ msglist; } ;
struct Curl_message {int list; } ;
typedef int CURLMcode ;


 int CURLM_OK ;
 int Curl_llist_insert_next (TYPE_1__*,int ,struct Curl_message*,int *) ;

__attribute__((used)) static CURLMcode multi_addmsg(struct Curl_multi *multi,
                              struct Curl_message *msg)
{
  Curl_llist_insert_next(&multi->msglist, multi->msglist.tail, msg,
                         &msg->list);
  return CURLM_OK;
}

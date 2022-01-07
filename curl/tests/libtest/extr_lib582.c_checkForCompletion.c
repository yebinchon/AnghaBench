
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ result; } ;
struct TYPE_5__ {scalar_t__ msg; TYPE_1__ data; } ;
typedef TYPE_2__ CURLMsg ;
typedef int CURLM ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLMSG_DONE ;
 TYPE_2__* curl_multi_info_read (int *,int*) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int checkForCompletion(CURLM *curl, int *success)
{
  int numMessages;
  CURLMsg *message;
  int result = 0;
  *success = 0;
  while((message = curl_multi_info_read(curl, &numMessages)) != ((void*)0)) {
    if(message->msg == CURLMSG_DONE) {
      result = 1;
      if(message->data.result == CURLE_OK)
        *success = 1;
      else
        *success = 0;
    }
    else {
      fprintf(stderr, "Got an unexpected message from curl: %i\n",
              (int)message->msg);
      result = 1;
      *success = 0;
    }
  }
  return result;
}

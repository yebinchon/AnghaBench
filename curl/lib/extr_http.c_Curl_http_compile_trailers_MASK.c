#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct curl_slist {struct curl_slist* next; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ crlf; scalar_t__ prefer_ascii; } ;
struct Curl_easy {TYPE_1__ set; } ;
typedef  int /*<<< orphan*/  Curl_send_buffer ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

CURLcode FUNC5(struct curl_slist *trailers,
                                    Curl_send_buffer **buffer,
                                    struct Curl_easy *handle)
{
  char *ptr = NULL;
  CURLcode result = CURLE_OK;
  const char *endofline_native = NULL;
  const char *endofline_network = NULL;

  if(
#ifdef CURL_DO_LINEEND_CONV
     (handle->set.prefer_ascii) ||
#endif
     (handle->set.crlf)) {
    /* \n will become \r\n later on */
    endofline_native  = "\n";
    endofline_network = "\x0a";
  }
  else {
    endofline_native  = "\r\n";
    endofline_network = "\x0d\x0a";
  }

  while(trailers) {
    /* only add correctly formatted trailers */
    ptr = FUNC3(trailers->data, ':');
    if(ptr && *(ptr + 1) == ' ') {
      result = FUNC1(buffer, "%s%s", trailers->data,
                                endofline_native);
      if(result)
        return result;
    }
    else
      FUNC2(handle, "Malformatted trailing header ! Skipping trailer.");
    trailers = trailers->next;
  }
  result = FUNC0(buffer, endofline_network,
                           FUNC4(endofline_network));
  return result;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct Curl_multi {struct Curl_easy* easyp; scalar_t__ in_callback; } ;
struct Curl_easy {struct Curl_easy* next; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ curl_socket_t ;
typedef  int /*<<< orphan*/  CURLMcode ;

/* Variables and functions */
 int /*<<< orphan*/  CURLM_BAD_HANDLE ; 
 int /*<<< orphan*/  CURLM_OK ; 
 int /*<<< orphan*/  CURLM_RECURSIVE_API_CALL ; 
 scalar_t__ CURL_SOCKET_BAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct Curl_multi*) ; 
 int MAX_SOCKSPEREASYHANDLE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (struct Curl_easy*,scalar_t__*) ; 

CURLMcode FUNC6(struct Curl_multi *multi,
                           fd_set *read_fd_set, fd_set *write_fd_set,
                           fd_set *exc_fd_set, int *max_fd)
{
  /* Scan through all the easy handles to get the file descriptors set.
     Some easy handles may not have connected to the remote host yet,
     and then we must make sure that is done. */
  struct Curl_easy *data;
  int this_max_fd = -1;
  curl_socket_t sockbunch[MAX_SOCKSPEREASYHANDLE];
  int i;
  (void)exc_fd_set; /* not used */

  if(!FUNC3(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  data = multi->easyp;
  while(data) {
    int bitmap = FUNC5(data, sockbunch);

    for(i = 0; i< MAX_SOCKSPEREASYHANDLE; i++) {
      curl_socket_t s = CURL_SOCKET_BAD;

      if((bitmap & FUNC1(i)) && FUNC4((sockbunch[i]))) {
        FUNC0(sockbunch[i], read_fd_set);
        s = sockbunch[i];
      }
      if((bitmap & FUNC2(i)) && FUNC4((sockbunch[i]))) {
        FUNC0(sockbunch[i], write_fd_set);
        s = sockbunch[i];
      }
      if(s == CURL_SOCKET_BAD)
        /* this socket is unused, break out of loop */
        break;
      if((int)s > this_max_fd)
        this_max_fd = (int)s;
    }

    data = data->next; /* check next handle */
  }

  *max_fd = this_max_fd;

  return CURLM_OK;
}
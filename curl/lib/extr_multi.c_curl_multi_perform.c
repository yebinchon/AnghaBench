
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curltime {int dummy; } ;
struct Curl_tree {int payload; } ;
struct Curl_multi {int num_alive; int timetree; struct Curl_easy* easyp; scalar_t__ in_callback; } ;
struct Curl_easy {struct Curl_easy* next; } ;
typedef scalar_t__ CURLMcode ;


 scalar_t__ CURLM_BAD_HANDLE ;
 scalar_t__ CURLM_OK ;
 scalar_t__ CURLM_RECURSIVE_API_CALL ;
 struct curltime Curl_now () ;
 int Curl_splaygetbest (struct curltime,int ,struct Curl_tree**) ;
 int Curl_update_timer (struct Curl_multi*) ;
 int GOOD_MULTI_HANDLE (struct Curl_multi*) ;
 int SIGPIPE_VARIABLE (int ) ;
 int add_next_timeout (struct curltime,struct Curl_multi*,int ) ;
 scalar_t__ multi_runsingle (struct Curl_multi*,struct curltime,struct Curl_easy*) ;
 int pipe_st ;
 int sigpipe_ignore (struct Curl_easy*,int *) ;
 int sigpipe_restore (int *) ;

CURLMcode curl_multi_perform(struct Curl_multi *multi, int *running_handles)
{
  struct Curl_easy *data;
  CURLMcode returncode = CURLM_OK;
  struct Curl_tree *t;
  struct curltime now = Curl_now();

  if(!GOOD_MULTI_HANDLE(multi))
    return CURLM_BAD_HANDLE;

  if(multi->in_callback)
    return CURLM_RECURSIVE_API_CALL;

  data = multi->easyp;
  while(data) {
    CURLMcode result;
    SIGPIPE_VARIABLE(pipe_st);

    sigpipe_ignore(data, &pipe_st);
    result = multi_runsingle(multi, now, data);
    sigpipe_restore(&pipe_st);

    if(result)
      returncode = result;

    data = data->next;
  }
  do {
    multi->timetree = Curl_splaygetbest(now, multi->timetree, &t);
    if(t)

      (void)add_next_timeout(now, multi, t->payload);

  } while(t);

  *running_handles = multi->num_alive;

  if(CURLM_OK >= returncode)
    Curl_update_timer(multi);

  return returncode;
}

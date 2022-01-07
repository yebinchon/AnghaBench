
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Curl_multi {scalar_t__ in_callback; } ;
struct TYPE_2__ {int maxconnects; scalar_t__* errorbuffer; } ;
struct Curl_easy {struct Curl_multi* multi; TYPE_1__ set; struct Curl_multi* multi_easy; } ;
typedef int CURLcode ;
typedef scalar_t__ CURLMcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_FAILED_INIT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_RECURSIVE_API_CALL ;
 int CURLMOPT_MAXCONNECTS ;
 scalar_t__ CURLM_OUT_OF_MEMORY ;
 struct Curl_multi* Curl_multi_handle (int,int) ;
 int SIGPIPE_VARIABLE (int ) ;
 scalar_t__ curl_multi_add_handle (struct Curl_multi*,struct Curl_easy*) ;
 int curl_multi_cleanup (struct Curl_multi*) ;
 int curl_multi_remove_handle (struct Curl_multi*,struct Curl_easy*) ;
 int curl_multi_setopt (struct Curl_multi*,int ,int ) ;
 int easy_events (struct Curl_multi*) ;
 int easy_transfer (struct Curl_multi*) ;
 int failf (struct Curl_easy*,char*) ;
 int pipe_st ;
 int sigpipe_ignore (struct Curl_easy*,int *) ;
 int sigpipe_restore (int *) ;

__attribute__((used)) static CURLcode easy_perform(struct Curl_easy *data, bool events)
{
  struct Curl_multi *multi;
  CURLMcode mcode;
  CURLcode result = CURLE_OK;
  SIGPIPE_VARIABLE(pipe_st);

  if(!data)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  if(data->set.errorbuffer)

    data->set.errorbuffer[0] = 0;

  if(data->multi) {
    failf(data, "easy handle already used in multi handle");
    return CURLE_FAILED_INIT;
  }

  if(data->multi_easy)
    multi = data->multi_easy;
  else {


    multi = Curl_multi_handle(1, 3);
    if(!multi)
      return CURLE_OUT_OF_MEMORY;
    data->multi_easy = multi;
  }

  if(multi->in_callback)
    return CURLE_RECURSIVE_API_CALL;


  curl_multi_setopt(multi, CURLMOPT_MAXCONNECTS, data->set.maxconnects);

  mcode = curl_multi_add_handle(multi, data);
  if(mcode) {
    curl_multi_cleanup(multi);
    if(mcode == CURLM_OUT_OF_MEMORY)
      return CURLE_OUT_OF_MEMORY;
    return CURLE_FAILED_INIT;
  }

  sigpipe_ignore(data, &pipe_st);



  data->multi = multi;


  result = events ? easy_events(multi) : easy_transfer(multi);



  (void)curl_multi_remove_handle(multi, data);

  sigpipe_restore(&pipe_st);


  return result;
}

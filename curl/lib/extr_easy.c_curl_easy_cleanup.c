
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_easy {int dummy; } ;


 int Curl_close (struct Curl_easy**) ;
 int SIGPIPE_VARIABLE (int ) ;
 int pipe_st ;
 int sigpipe_ignore (struct Curl_easy*,int *) ;
 int sigpipe_restore (int *) ;

void curl_easy_cleanup(struct Curl_easy *data)
{
  SIGPIPE_VARIABLE(pipe_st);

  if(!data)
    return;

  sigpipe_ignore(data, &pipe_st);
  Curl_close(&data);
  sigpipe_restore(&pipe_st);
}

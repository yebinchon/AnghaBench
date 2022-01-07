
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct auth {int dummy; } ;
struct UserDefined {int dummy; } ;
struct Progress {int dummy; } ;
struct TYPE_4__ {long buffer_size; int flags; } ;
struct TYPE_3__ {int current_speed; char* buffer; TYPE_2__ authproxy; TYPE_2__ authhost; } ;
struct Curl_easy {TYPE_1__ state; TYPE_2__ set; TYPE_2__ progress; } ;


 int Curl_free_request_state (struct Curl_easy*) ;
 int Curl_freeset (struct Curl_easy*) ;
 int Curl_http_auth_cleanup_digest (struct Curl_easy*) ;
 int Curl_init_userdefined (struct Curl_easy*) ;
 int Curl_initinfo (struct Curl_easy*) ;
 int DEBUGF (int ) ;
 int PGRS_HIDE ;
 int fprintf (int ,char*) ;
 int memset (TYPE_2__*,int ,int) ;
 char* realloc (char*,int) ;
 int stderr ;

void curl_easy_reset(struct Curl_easy *data)
{
  long old_buffer_size = data->set.buffer_size;

  Curl_free_request_state(data);


  Curl_freeset(data);
  memset(&data->set, 0, sizeof(struct UserDefined));
  (void)Curl_init_userdefined(data);


  memset(&data->progress, 0, sizeof(struct Progress));


  Curl_initinfo(data);

  data->progress.flags |= PGRS_HIDE;
  data->state.current_speed = -1;


  memset(&data->state.authhost, 0, sizeof(struct auth));
  memset(&data->state.authproxy, 0, sizeof(struct auth));


  Curl_http_auth_cleanup_digest(data);



  if(old_buffer_size != data->set.buffer_size) {
    char *newbuff = realloc(data->state.buffer, data->set.buffer_size + 1);
    if(!newbuff) {
      DEBUGF(fprintf(stderr, "Error: realloc of buffer failed\n"));

      data->set.buffer_size = old_buffer_size;
    }
    else
      data->state.buffer = newbuff;
  }
}

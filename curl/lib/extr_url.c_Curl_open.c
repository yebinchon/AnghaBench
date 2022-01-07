
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int current_speed; struct Curl_easy* headerbuff; struct Curl_easy* buffer; int resolver; int * lastconnect; scalar_t__ headersize; } ;
struct TYPE_3__ {int flags; } ;
struct Curl_easy {TYPE_2__ state; TYPE_1__ progress; int magic; } ;
typedef scalar_t__ CURLcode ;


 int CURLEASY_MAGIC_NUMBER ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int Curl_convert_init (struct Curl_easy*) ;
 int Curl_freeset (struct Curl_easy*) ;
 scalar_t__ Curl_init_userdefined (struct Curl_easy*) ;
 int Curl_initinfo (struct Curl_easy*) ;
 int Curl_resolver_cleanup (int ) ;
 scalar_t__ Curl_resolver_init (struct Curl_easy*,int *) ;
 int DEBUGF (int ) ;
 scalar_t__ HEADERSIZE ;
 int PGRS_HIDE ;
 scalar_t__ READBUFFER_SIZE ;
 struct Curl_easy* calloc (int,int) ;
 int fprintf (int ,char*) ;
 int free (struct Curl_easy*) ;
 void* malloc (scalar_t__) ;
 int stderr ;

CURLcode Curl_open(struct Curl_easy **curl)
{
  CURLcode result;
  struct Curl_easy *data;


  data = calloc(1, sizeof(struct Curl_easy));
  if(!data) {

    DEBUGF(fprintf(stderr, "Error: calloc of Curl_easy failed\n"));
    return CURLE_OUT_OF_MEMORY;
  }

  data->magic = CURLEASY_MAGIC_NUMBER;

  result = Curl_resolver_init(data, &data->state.resolver);
  if(result) {
    DEBUGF(fprintf(stderr, "Error: resolver_init failed\n"));
    free(data);
    return result;
  }



  data->state.buffer = malloc(READBUFFER_SIZE + 1);
  if(!data->state.buffer) {
    DEBUGF(fprintf(stderr, "Error: malloc of buffer failed\n"));
    result = CURLE_OUT_OF_MEMORY;
  }
  else {
    data->state.headerbuff = malloc(HEADERSIZE);
    if(!data->state.headerbuff) {
      DEBUGF(fprintf(stderr, "Error: malloc of headerbuff failed\n"));
      result = CURLE_OUT_OF_MEMORY;
    }
    else {
      result = Curl_init_userdefined(data);

      data->state.headersize = HEADERSIZE;
      Curl_convert_init(data);
      Curl_initinfo(data);


      data->state.lastconnect = ((void*)0);

      data->progress.flags |= PGRS_HIDE;
      data->state.current_speed = -1;
    }
  }

  if(result) {
    Curl_resolver_cleanup(data->state.resolver);
    free(data->state.buffer);
    free(data->state.headerbuff);
    Curl_freeset(data);
    free(data);
    data = ((void*)0);
  }
  else
    *curl = data;

  return result;
}

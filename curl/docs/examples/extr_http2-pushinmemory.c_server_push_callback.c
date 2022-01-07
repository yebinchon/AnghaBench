
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_pushheaders {int dummy; } ;
typedef int CURL ;


 int CURLOPT_WRITEDATA ;
 int CURL_PUSH_DENY ;
 int CURL_PUSH_OK ;
 size_t MAX_FILES ;
 int curl_easy_setopt (int *,int ,int *) ;
 char* curl_pushheader_byname (struct curl_pushheaders*,char*) ;
 int * files ;
 int fprintf (int ,char*,char*) ;
 int init_memory (int *) ;
 size_t pushindex ;
 int stderr ;

__attribute__((used)) static int server_push_callback(CURL *parent,
                                CURL *easy,
                                size_t num_headers,
                                struct curl_pushheaders *headers,
                                void *userp)
{
  char *headp;
  int *transfers = (int *)userp;
  (void)parent;
  (void)num_headers;

  if(pushindex == MAX_FILES)

    return CURL_PUSH_DENY;


  init_memory(&files[pushindex]);
  curl_easy_setopt(easy, CURLOPT_WRITEDATA, &files[pushindex]);
  pushindex++;

  headp = curl_pushheader_byname(headers, ":path");
  if(headp)
    fprintf(stderr, "* Pushed :path '%s'\n", headp );

  (*transfers)++;
  return CURL_PUSH_OK;
}

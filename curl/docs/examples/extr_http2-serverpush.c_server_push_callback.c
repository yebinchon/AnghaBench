
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_pushheaders {int dummy; } ;
typedef int FILE ;
typedef int CURL ;


 int CURLOPT_WRITEDATA ;
 int CURL_PUSH_DENY ;
 int CURL_PUSH_OK ;
 int curl_easy_setopt (int *,int ,int *) ;
 char* curl_pushheader_byname (struct curl_pushheaders*,char*) ;
 char* curl_pushheader_bynum (struct curl_pushheaders*,size_t) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int snprintf (char*,int,char*,int ) ;
 int stderr ;

__attribute__((used)) static int server_push_callback(CURL *parent,
                                CURL *easy,
                                size_t num_headers,
                                struct curl_pushheaders *headers,
                                void *userp)
{
  char *headp;
  size_t i;
  int *transfers = (int *)userp;
  char filename[128];
  FILE *out;
  static unsigned int count = 0;

  (void)parent;

  snprintf(filename, 128, "push%u", count++);


  out = fopen(filename, "wb");
  if(!out) {

    fprintf(stderr, "Failed to create output file for push\n");
    return CURL_PUSH_DENY;
  }


  curl_easy_setopt(easy, CURLOPT_WRITEDATA, out);

  fprintf(stderr, "**** push callback approves stream %u, got %lu headers!\n",
          count, (unsigned long)num_headers);

  for(i = 0; i<num_headers; i++) {
    headp = curl_pushheader_bynum(headers, i);
    fprintf(stderr, "**** header %lu: %s\n", (unsigned long)i, headp);
  }

  headp = curl_pushheader_byname(headers, ":path");
  if(headp) {
    fprintf(stderr, "**** The PATH is %s\n", headp );
  }

  (*transfers)++;
  return CURL_PUSH_OK;
}

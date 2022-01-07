
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStruct {char* memory; scalar_t__ size; } ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_URL ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 long WriteMemoryCallback ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,...) ;
 char* curl_easy_strerror (int ) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int printf (char*,char*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;

int main(void)
{
  CURL *curl;
  CURLcode res;
  struct MemoryStruct chunk;
  static const char *postthis = "Field=1&Field=2&Field=3";

  chunk.memory = malloc(1);
  chunk.size = 0;

  curl_global_init(CURL_GLOBAL_ALL);
  curl = curl_easy_init();
  if(curl) {
    curl_easy_setopt(curl, CURLOPT_URL, "https://www.example.org/");


    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);


    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *)&chunk);



    curl_easy_setopt(curl, CURLOPT_USERAGENT, "libcurl-agent/1.0");

    curl_easy_setopt(curl, CURLOPT_POSTFIELDS, postthis);



    curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)strlen(postthis));


    res = curl_easy_perform(curl);

    if(res != CURLE_OK) {
      fprintf(stderr, "curl_easy_perform() failed: %s\n",
              curl_easy_strerror(res));
    }
    else {






      printf("%s\n",chunk.memory);
    }


    curl_easy_cleanup(curl);


    curl_global_cleanup();
  }
  free(chunk.memory);
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MemoryStruct {int memory; scalar_t__ size; } ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_URL ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURL_GLOBAL_ALL ;
 char* WriteMemoryCallback ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 char* curl_easy_strerror (scalar_t__) ;
 int curl_global_cleanup () ;
 int curl_global_init (int ) ;
 int fprintf (int ,char*,char*) ;
 int free (int ) ;
 int malloc (int) ;
 int printf (char*,unsigned long) ;
 int stderr ;

int main(void)
{
  CURL *curl_handle;
  CURLcode res;

  struct MemoryStruct chunk;

  chunk.memory = malloc(1);
  chunk.size = 0;

  curl_global_init(CURL_GLOBAL_ALL);


  curl_handle = curl_easy_init();


  curl_easy_setopt(curl_handle, CURLOPT_URL, "https://www.example.com/");


  curl_easy_setopt(curl_handle, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);


  curl_easy_setopt(curl_handle, CURLOPT_WRITEDATA, (void *)&chunk);



  curl_easy_setopt(curl_handle, CURLOPT_USERAGENT, "libcurl-agent/1.0");


  res = curl_easy_perform(curl_handle);


  if(res != CURLE_OK) {
    fprintf(stderr, "curl_easy_perform() failed: %s\n",
            curl_easy_strerror(res));
  }
  else {







    printf("%lu bytes retrieved\n", (unsigned long)chunk.size);
  }


  curl_easy_cleanup(curl_handle);

  free(chunk.memory);


  curl_global_cleanup();

  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef char FILE ;
typedef int CURL ;


 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,char*) ;
 int fclose (char*) ;
 char* fopen (int ,char*) ;
 int g_free (char*) ;
 char* g_strdup_printf (char*,int ) ;
 int j ;
 int lock ;
 int num_urls ;
 int printf (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 int * urls ;
 char* write_file ;

void *pull_one_url(void *NaN)
{

  pthread_mutex_lock(&lock);
  while(j < num_urls) {
    CURL *curl;
    gchar *http;

    printf("j = %d\n", j);

    http =
      g_strdup_printf("xoap.weather.com/weather/local/%s?cc=*&dayf=5&unit=i\n",
                      urls[j]);

    printf("http %s", http);

    curl = curl_easy_init();
    if(curl) {

      FILE *outfile = fopen(urls[j], "wb");


      curl_easy_setopt(curl, CURLOPT_URL, http);


      curl_easy_setopt(curl, CURLOPT_WRITEDATA, outfile);
      curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_file);

      j++;
      pthread_mutex_unlock(&lock);

      curl_easy_perform(curl);

      fclose(outfile);
      printf("fclose\n");

      curl_easy_cleanup(curl);
    }
    g_free(http);


    sleep(1);

  }
  return ((void*)0);
}

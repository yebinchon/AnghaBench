
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int FILE ;
typedef int CURL ;


 long Bar ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_PROGRESSDATA ;
 int CURLOPT_PROGRESSFUNCTION ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_easy_setopt (int *,int ,long) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 long my_progress_func ;
 long my_read_func ;
 long my_write_func ;

void *my_thread(void *ptr)
{
  CURL *curl;

  curl = curl_easy_init();
  if(curl) {
    gchar *url = ptr;
    const char *filename = "test.curl";
    FILE *outfile = fopen(filename, "wb");

    curl_easy_setopt(curl, CURLOPT_URL, url);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, outfile);
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, my_write_func);
    curl_easy_setopt(curl, CURLOPT_READFUNCTION, my_read_func);
    curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 0L);
    curl_easy_setopt(curl, CURLOPT_PROGRESSFUNCTION, my_progress_func);
    curl_easy_setopt(curl, CURLOPT_PROGRESSDATA, Bar);

    curl_easy_perform(curl);

    fclose(outfile);

    curl_easy_cleanup(curl);
  }

  return ((void*)0);
}

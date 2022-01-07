
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURL ;


 int Curl_safefree (char*) ;
 char* aprintf (char*,char*,char*) ;
 int curl_easy_cleanup (int *) ;
 char* curl_easy_escape (int *,char const*,int ) ;
 int * curl_easy_init () ;
 int curl_free (char*) ;
 int strlen (char*) ;
 void* strrchr (char const*,char) ;
 char* strstr (char*,char*) ;

char *add_file_name_to_url(char *url, const char *filename)
{

  char *ptr = strstr(url, "://");
  CURL *curl = curl_easy_init();
  if(!curl)
    return ((void*)0);
  if(ptr)
    ptr += 3;
  else
    ptr = url;
  ptr = strrchr(ptr, '/');
  if(!ptr || !strlen(++ptr)) {






    const char *filep = strrchr(filename, '/');
    char *file2 = strrchr(filep?filep:filename, '\\');
    char *encfile;

    if(file2)
      filep = file2 + 1;
    else if(filep)
      filep++;
    else
      filep = filename;


    encfile = curl_easy_escape(curl, filep, 0 );
    if(encfile) {
      char *urlbuffer;
      if(ptr)

        urlbuffer = aprintf("%s%s", url, encfile);
      else

        urlbuffer = aprintf("%s/%s", url, encfile);

      curl_free(encfile);
      Curl_safefree(url);

      if(!urlbuffer)
        return ((void*)0);

      url = urlbuffer;
    }
    else
      Curl_safefree(url);
  }
  curl_easy_cleanup(curl);
  return url;
}

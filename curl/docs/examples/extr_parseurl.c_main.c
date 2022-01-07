
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLUcode ;
typedef int CURLU ;


 int CURLUPART_HOST ;
 int CURLUPART_PATH ;
 int CURLUPART_URL ;
 int curl_free (char*) ;
 int * curl_url () ;
 int curl_url_cleanup (int *) ;
 scalar_t__ curl_url_get (int *,int ,char**,int ) ;
 scalar_t__ curl_url_set (int *,int ,char*,int ) ;
 int printf (char*,char*) ;

int main(void)
{
  CURLU *h;
  CURLUcode uc;
  char *host;
  char *path;

  h = curl_url();
  if(!h)
    return 1;


  uc = curl_url_set(h, CURLUPART_URL, "http://example.com/path/index.html", 0);
  if(uc)
    goto fail;


  uc = curl_url_get(h, CURLUPART_HOST, &host, 0);
  if(!uc) {
    printf("Host name: %s\n", host);
    curl_free(host);
  }


  uc = curl_url_get(h, CURLUPART_PATH, &path, 0);
  if(!uc) {
    printf("Path: %s\n", path);
    curl_free(path);
  }


  uc = curl_url_set(h, CURLUPART_URL, "../another/second.html", 0);
  if(uc)
    goto fail;


  uc = curl_url_get(h, CURLUPART_PATH, &path, 0);
  if(!uc) {
    printf("Path: %s\n", path);
    curl_free(path);
  }

  fail:
  curl_url_cleanup(h);
  return 0;
}

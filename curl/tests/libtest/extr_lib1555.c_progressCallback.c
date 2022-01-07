
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int curl ;
 int curl_easy_recv (int ,char*,int,size_t*) ;
 int curl_easy_send (int ,char*,size_t,size_t*) ;
 int printf (char*,int) ;

__attribute__((used)) static int progressCallback(void *arg,
                            double dltotal,
                            double dlnow,
                            double ultotal,
                            double ulnow)
{
  CURLcode res = 0;
  char buffer[256];
  size_t n = 0;
  (void)arg;
  (void)dltotal;
  (void)dlnow;
  (void)ultotal;
  (void)ulnow;
  res = curl_easy_recv(curl, buffer, 256, &n);
  printf("curl_easy_recv returned %d\n", res);
  res = curl_easy_send(curl, buffer, n, &n);
  printf("curl_easy_send returned %d\n", res);

  return 1;
}

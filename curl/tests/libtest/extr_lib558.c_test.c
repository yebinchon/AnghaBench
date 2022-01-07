
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int CURL_GLOBAL_ALL ;
 int Curl_safefree (char*) ;
 int TEST_ERR_MAJOR_BAD ;
 char* curl_easy_escape (int *,char*,int) ;
 int curl_free (char*) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int fprintf (int ,char*) ;
 char* malloc (int) ;
 int stderr ;

int test(char *URL)
{
  unsigned char a[] = {0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
                       0x91, 0xa2, 0xb3, 0xc4, 0xd5, 0xe6, 0xf7};
  CURLcode res = CURLE_OK;
  char *ptr = ((void*)0);
  int asize;

  (void)URL;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  ptr = malloc(558);
  Curl_safefree(ptr);

  asize = (int)sizeof(a);
  ptr = curl_easy_escape(((void*)0), (char *)a, asize);
  if(ptr)
    curl_free(ptr);

  curl_global_cleanup();

  return (int)res;
}

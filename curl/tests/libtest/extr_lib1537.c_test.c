
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a ;
typedef int CURLcode ;


 scalar_t__ CURLE_OK ;
 int CURL_GLOBAL_ALL ;
 int TEST_ERR_MAJOR_BAD ;
 char* curl_easy_escape (int *,char*,int) ;
 char* curl_easy_unescape (int *,char*,int,int*) ;
 char* curl_escape (char*,int) ;
 int curl_free (char*) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 char* curl_unescape (char*,int) ;
 int fprintf (int ,char*) ;
 scalar_t__ memcmp (char*,unsigned char const*,int) ;
 int printf (char*,...) ;
 int stderr ;
 scalar_t__ strlen (char*) ;

int test(char *URL)
{
  const unsigned char a[] = {0x2f, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f,
                             0x91, 0xa2, 0xb3, 0xc4, 0xd5, 0xe6, 0xf7};
  CURLcode res = CURLE_OK;
  char *ptr = ((void*)0);
  int asize;
  int outlen = 0;
  char *raw;

  (void)URL;

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  asize = (int)sizeof(a);
  ptr = curl_easy_escape(((void*)0), (char *)a, asize);
  printf("%s\n", ptr);
  curl_free(ptr);


  ptr = curl_escape((char *)a, asize);
  printf("%s\n", ptr);
  if(!ptr) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  raw = curl_easy_unescape(((void*)0), ptr, (int)strlen(ptr), &outlen);
  printf("outlen == %d\n", outlen);
  printf("unescape == original? %s\n",
         memcmp(raw, a, outlen) ? "no" : "YES");
  curl_free(raw);


  raw = curl_unescape(ptr, (int)strlen(ptr));
  if(!raw) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  outlen = (int)strlen(raw);
  printf("[old] outlen == %d\n", outlen);
  printf("[old] unescape == original? %s\n",
         memcmp(raw, a, outlen) ? "no" : "YES");
  curl_free(raw);
  curl_free(ptr);


  ptr = curl_easy_escape(((void*)0), (char *)a, -1);
  printf("escape -1 length: %s\n", ptr);


  outlen = 2017;
  ptr = curl_easy_unescape(((void*)0), (char *)"moahahaha", -1, &outlen);
  printf("unescape -1 length: %s %d\n", ptr, outlen);

test_cleanup:
  curl_free(ptr);
  curl_global_cleanup();

  return (int)res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_off_t ;



__attribute__((used)) static int dload_progress_cb(void *a, curl_off_t b, curl_off_t c,
                             curl_off_t d, curl_off_t e)
{
  (void)a;
  (void)b;
  (void)c;
  (void)d;
  (void)e;
  return 0;
}

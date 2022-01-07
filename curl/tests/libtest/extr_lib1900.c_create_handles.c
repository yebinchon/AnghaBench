
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curl_easy_init () ;
 int * handles ;
 int num_handles ;

__attribute__((used)) static int create_handles(void)
{
  int i;

  for(i = 0; i < num_handles; i++) {
    handles[i] = curl_easy_init();
  }
  return 0;
}

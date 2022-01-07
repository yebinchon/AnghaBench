
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curl_easy_cleanup (scalar_t__) ;
 scalar_t__* handles ;
 int num_handles ;

__attribute__((used)) static void remove_handles(void)
{
  int i;

  for(i = 0; i < num_handles; i++) {
    if(handles[i])
      curl_easy_cleanup(handles[i]);
  }
}

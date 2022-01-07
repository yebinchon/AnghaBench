
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_safefree (int ) ;
 int blacklist_num_servers ;
 int blacklist_num_sites ;
 int num_handles ;
 int * server_blacklist ;
 int * site_blacklist ;
 int * urlstring ;

__attribute__((used)) static void free_urls(void)
{
  int i;
  for(i = 0; i < num_handles; i++) {
    Curl_safefree(urlstring[i]);
  }
  for(i = 0; i < blacklist_num_servers; i++) {
    Curl_safefree(server_blacklist[i]);
  }
  for(i = 0; i < blacklist_num_sites; i++) {
    Curl_safefree(site_blacklist[i]);
  }
}

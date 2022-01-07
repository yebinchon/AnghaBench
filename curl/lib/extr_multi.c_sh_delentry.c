
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;
struct Curl_sh_entry {int transfers; } ;
typedef int curl_socket_t ;


 int Curl_hash_delete (struct curl_hash*,char*,int) ;
 int Curl_hash_destroy (int *) ;

__attribute__((used)) static void sh_delentry(struct Curl_sh_entry *entry,
                        struct curl_hash *sh, curl_socket_t s)
{
  Curl_hash_destroy(&entry->transfers);



  Curl_hash_delete(sh, (char *)&s, sizeof(curl_socket_t));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;


 int Curl_freeaddrinfo (int ) ;
 int Curl_hash_destroy (int *) ;
 int curl_easy_cleanup (int ) ;
 int curl_global_cleanup () ;
 int data ;
 TYPE_1__* data_key ;
 TYPE_1__* data_node ;
 int free (TYPE_1__*) ;
 int hp ;

__attribute__((used)) static void unit_stop(void)
{
  if(data_node) {
    Curl_freeaddrinfo(data_node->addr);
    free(data_node);
  }
  free(data_key);
  Curl_hash_destroy(&hp);

  curl_easy_cleanup(data);
  curl_global_cleanup();
}

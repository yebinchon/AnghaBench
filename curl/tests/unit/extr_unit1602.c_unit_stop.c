
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Curl_hash_destroy (int *) ;
 int hash_static ;

__attribute__((used)) static void unit_stop(void)
{
  Curl_hash_destroy(&hash_static);
}

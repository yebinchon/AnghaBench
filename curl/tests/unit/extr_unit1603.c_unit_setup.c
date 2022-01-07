
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int Curl_hash_init (int *,int ,int ,int ,int ) ;
 int Curl_hash_str ;
 int Curl_str_key_compare ;
 int hash_static ;
 int mydtor ;
 int slots ;

__attribute__((used)) static CURLcode unit_setup(void)
{
  return Curl_hash_init(&hash_static, slots, Curl_hash_str,
                        Curl_str_key_compare, mydtor);
}

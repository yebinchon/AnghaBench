
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;


 int Curl_hash_init (struct curl_hash*,int,int ,int ,int ) ;
 int Curl_hash_str ;
 int Curl_str_key_compare ;
 int freednsentry ;

int Curl_mk_dnscache(struct curl_hash *hash)
{
  return Curl_hash_init(hash, 7, Curl_hash_str, Curl_str_key_compare,
                        freednsentry);
}

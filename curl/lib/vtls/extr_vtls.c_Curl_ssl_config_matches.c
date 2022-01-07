
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssl_primary_config {scalar_t__ version; scalar_t__ version_max; scalar_t__ verifypeer; scalar_t__ verifyhost; scalar_t__ verifystatus; int pinned_key; int cipher_list13; int cipher_list; int egdsocket; int random_file; int clientcert; int CAfile; int CApath; } ;


 scalar_t__ Curl_safe_strcasecompare (int ,int ) ;
 int FALSE ;
 int TRUE ;

bool
Curl_ssl_config_matches(struct ssl_primary_config* data,
                        struct ssl_primary_config* needle)
{
  if((data->version == needle->version) &&
     (data->version_max == needle->version_max) &&
     (data->verifypeer == needle->verifypeer) &&
     (data->verifyhost == needle->verifyhost) &&
     (data->verifystatus == needle->verifystatus) &&
     Curl_safe_strcasecompare(data->CApath, needle->CApath) &&
     Curl_safe_strcasecompare(data->CAfile, needle->CAfile) &&
     Curl_safe_strcasecompare(data->clientcert, needle->clientcert) &&
     Curl_safe_strcasecompare(data->random_file, needle->random_file) &&
     Curl_safe_strcasecompare(data->egdsocket, needle->egdsocket) &&
     Curl_safe_strcasecompare(data->cipher_list, needle->cipher_list) &&
     Curl_safe_strcasecompare(data->cipher_list13, needle->cipher_list13) &&
     Curl_safe_strcasecompare(data->pinned_key, needle->pinned_key))
    return TRUE;

  return FALSE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_multi {int dummy; } ;


 int CURL_CONNECTION_HASH_SIZE ;
 int CURL_SOCKET_HASH_TABLE_SIZE ;
 struct Curl_multi* Curl_multi_handle (int ,int ) ;

struct Curl_multi *curl_multi_init(void)
{
  return Curl_multi_handle(CURL_SOCKET_HASH_TABLE_SIZE,
                           CURL_CONNECTION_HASH_SIZE);
}

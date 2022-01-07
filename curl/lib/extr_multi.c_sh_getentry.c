
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_hash {int dummy; } ;
struct Curl_sh_entry {int dummy; } ;
typedef scalar_t__ curl_socket_t ;


 scalar_t__ CURL_SOCKET_BAD ;
 struct Curl_sh_entry* Curl_hash_pick (struct curl_hash*,char*,int) ;

__attribute__((used)) static struct Curl_sh_entry *sh_getentry(struct curl_hash *sh,
                                         curl_socket_t s)
{
  if(s != CURL_SOCKET_BAD) {

    return Curl_hash_pick(sh, (char *)&s, sizeof(curl_socket_t));
  }
  return ((void*)0);
}

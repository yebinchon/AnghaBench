
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_sh_entry {int socketp; } ;
struct Curl_multi {int sockhash; int socket_userp; int (* socket_cb ) (struct Curl_easy*,int ,int ,int ,int ) ;} ;
struct Curl_easy {struct Curl_multi* multi; } ;
typedef int curl_socket_t ;


 int CURL_POLL_REMOVE ;
 int sh_delentry (struct Curl_sh_entry*,int *,int ) ;
 struct Curl_sh_entry* sh_getentry (int *,int ) ;
 int stub1 (struct Curl_easy*,int ,int ,int ,int ) ;

void Curl_multi_closed(struct Curl_easy *data, curl_socket_t s)
{
  if(data) {

    struct Curl_multi *multi = data->multi;
    if(multi) {


      struct Curl_sh_entry *entry = sh_getentry(&multi->sockhash, s);

      if(entry) {
        if(multi->socket_cb)
          multi->socket_cb(data, s, CURL_POLL_REMOVE,
                           multi->socket_userp,
                           entry->socketp);


        sh_delentry(entry, &multi->sockhash, s);
      }
    }
  }
}

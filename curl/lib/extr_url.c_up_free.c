
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urlpieces {int query; int path; int options; int password; int user; int port; int hostname; int scheme; } ;
struct TYPE_2__ {int * uh; struct urlpieces up; } ;
struct Curl_easy {TYPE_1__ state; } ;


 int Curl_safefree (int ) ;
 int curl_url_cleanup (int *) ;

__attribute__((used)) static void up_free(struct Curl_easy *data)
{
  struct urlpieces *up = &data->state.up;
  Curl_safefree(up->scheme);
  Curl_safefree(up->hostname);
  Curl_safefree(up->port);
  Curl_safefree(up->user);
  Curl_safefree(up->password);
  Curl_safefree(up->options);
  Curl_safefree(up->path);
  Curl_safefree(up->query);
  curl_url_cleanup(data->state.uh);
  data->state.uh = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* probe; } ;
struct TYPE_6__ {TYPE_2__ doh; int newurl; int protop; } ;
struct Curl_easy {TYPE_3__ req; } ;
struct TYPE_4__ {int easy; } ;


 int Curl_close (int *) ;
 int Curl_safefree (int ) ;

void Curl_free_request_state(struct Curl_easy *data)
{
  Curl_safefree(data->req.protop);
  Curl_safefree(data->req.newurl);


  Curl_close(&data->req.doh.probe[0].easy);
  Curl_close(&data->req.doh.probe[1].easy);

}

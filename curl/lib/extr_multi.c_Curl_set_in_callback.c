
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_easy {TYPE_2__* multi; TYPE_1__* multi_easy; } ;
struct TYPE_4__ {int in_callback; } ;
struct TYPE_3__ {int in_callback; } ;



void Curl_set_in_callback(struct Curl_easy *data, bool value)
{

  if(data) {
    if(data->multi_easy)
      data->multi_easy->in_callback = value;
    else if(data->multi)
      data->multi->in_callback = value;
  }
}

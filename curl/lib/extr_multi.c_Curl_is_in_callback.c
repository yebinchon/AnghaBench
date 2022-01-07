
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Curl_easy {TYPE_2__* multi_easy; TYPE_1__* multi; } ;
struct TYPE_4__ {scalar_t__ in_callback; } ;
struct TYPE_3__ {scalar_t__ in_callback; } ;



bool Curl_is_in_callback(struct Curl_easy *easy)
{
  return ((easy->multi && easy->multi->in_callback) ||
          (easy->multi_easy && easy->multi_easy->in_callback));
}

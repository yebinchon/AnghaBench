
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curltime {int dummy; } ;
struct TYPE_2__ {int keeps_speed; } ;
struct Curl_easy {TYPE_1__ state; } ;


 int memset (int *,int ,int) ;

void Curl_speedinit(struct Curl_easy *data)
{
  memset(&data->state.keeps_speed, 0, sizeof(struct curltime));
}

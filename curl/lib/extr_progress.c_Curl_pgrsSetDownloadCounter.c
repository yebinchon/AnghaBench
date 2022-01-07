
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int downloaded; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef int curl_off_t ;



void Curl_pgrsSetDownloadCounter(struct Curl_easy *data, curl_off_t size)
{
  data->progress.downloaded = size;
}

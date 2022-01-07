
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ size_dl; } ;
struct Curl_easy {TYPE_1__ progress; } ;
typedef scalar_t__ curl_off_t ;


 int PGRS_DL_SIZE_KNOWN ;

void Curl_pgrsSetDownloadSize(struct Curl_easy *data, curl_off_t size)
{
  if(size >= 0) {
    data->progress.size_dl = size;
    data->progress.flags |= PGRS_DL_SIZE_KNOWN;
  }
  else {
    data->progress.size_dl = 0;
    data->progress.flags &= ~PGRS_DL_SIZE_KNOWN;
  }
}

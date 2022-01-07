
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {int is_t_startransfer_set; int flags; int start; scalar_t__ uploaded; scalar_t__ downloaded; TYPE_2__ dl_limit_start; TYPE_1__ ul_limit_start; scalar_t__ speeder_c; } ;
struct Curl_easy {TYPE_3__ progress; } ;


 int Curl_now () ;
 int Curl_ratelimit (struct Curl_easy*,int ) ;
 int PGRS_HEADERS_OUT ;
 int PGRS_HIDE ;

void Curl_pgrsStartNow(struct Curl_easy *data)
{
  data->progress.speeder_c = 0;
  data->progress.start = Curl_now();
  data->progress.is_t_startransfer_set = 0;
  data->progress.ul_limit_start.tv_sec = 0;
  data->progress.ul_limit_start.tv_usec = 0;
  data->progress.dl_limit_start.tv_sec = 0;
  data->progress.dl_limit_start.tv_usec = 0;
  data->progress.downloaded = 0;
  data->progress.uploaded = 0;

  data->progress.flags &= PGRS_HIDE|PGRS_HEADERS_OUT;
  Curl_ratelimit(data, data->progress.start);
}

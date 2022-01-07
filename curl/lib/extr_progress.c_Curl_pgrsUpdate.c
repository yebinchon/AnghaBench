
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct curltime {int dummy; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int flags; scalar_t__ uploaded; scalar_t__ size_ul; scalar_t__ downloaded; scalar_t__ size_dl; } ;
struct TYPE_3__ {int (* fxferinfo ) (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;int (* fprogress ) (int ,double,double,double,double) ;int progress_client; } ;
struct Curl_easy {TYPE_2__ progress; TYPE_1__ set; } ;


 struct curltime Curl_now () ;
 int Curl_set_in_callback (struct Curl_easy*,int) ;
 int PGRS_HIDE ;
 int failf (struct Curl_easy*,char*) ;
 int progress_calc (struct connectdata*,struct curltime) ;
 int progress_meter (struct connectdata*) ;
 int stub1 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stub2 (int ,double,double,double,double) ;

int Curl_pgrsUpdate(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  struct curltime now = Curl_now();
  bool showprogress = progress_calc(conn, now);
  if(!(data->progress.flags & PGRS_HIDE)) {
    if(data->set.fxferinfo) {
      int result;

      Curl_set_in_callback(data, 1);
      result = data->set.fxferinfo(data->set.progress_client,
                                   data->progress.size_dl,
                                   data->progress.downloaded,
                                   data->progress.size_ul,
                                   data->progress.uploaded);
      Curl_set_in_callback(data, 0);
      if(result)
        failf(data, "Callback aborted");
      return result;
    }
    if(data->set.fprogress) {
      int result;

      Curl_set_in_callback(data, 1);
      result = data->set.fprogress(data->set.progress_client,
                                   (double)data->progress.size_dl,
                                   (double)data->progress.downloaded,
                                   (double)data->progress.size_ul,
                                   (double)data->progress.uploaded);
      Curl_set_in_callback(data, 0);
      if(result)
        failf(data, "Callback aborted");
      return result;
    }

    if(showprogress)
      progress_meter(conn);
  }

  return 0;
}

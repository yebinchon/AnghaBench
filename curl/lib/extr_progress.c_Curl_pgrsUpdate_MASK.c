#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct curltime {int dummy; } ;
struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int flags; scalar_t__ uploaded; scalar_t__ size_ul; scalar_t__ downloaded; scalar_t__ size_dl; } ;
struct TYPE_3__ {int (* fxferinfo ) (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;int (* fprogress ) (int /*<<< orphan*/ ,double,double,double,double) ;int /*<<< orphan*/  progress_client; } ;
struct Curl_easy {TYPE_2__ progress; TYPE_1__ set; } ;

/* Variables and functions */
 struct curltime FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct Curl_easy*,int) ; 
 int PGRS_HIDE ; 
 int /*<<< orphan*/  FUNC2 (struct Curl_easy*,char*) ; 
 int FUNC3 (struct connectdata*,struct curltime) ; 
 int /*<<< orphan*/  FUNC4 (struct connectdata*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,double,double,double,double) ; 

int FUNC7(struct connectdata *conn)
{
  struct Curl_easy *data = conn->data;
  struct curltime now = FUNC0(); /* what time is it */
  bool showprogress = FUNC3(conn, now);
  if(!(data->progress.flags & PGRS_HIDE)) {
    if(data->set.fxferinfo) {
      int result;
      /* There's a callback set, call that */
      FUNC1(data, true);
      result = data->set.fxferinfo(data->set.progress_client,
                                   data->progress.size_dl,
                                   data->progress.downloaded,
                                   data->progress.size_ul,
                                   data->progress.uploaded);
      FUNC1(data, false);
      if(result)
        FUNC2(data, "Callback aborted");
      return result;
    }
    if(data->set.fprogress) {
      int result;
      /* The older deprecated callback is set, call that */
      FUNC1(data, true);
      result = data->set.fprogress(data->set.progress_client,
                                   (double)data->progress.size_dl,
                                   (double)data->progress.downloaded,
                                   (double)data->progress.size_ul,
                                   (double)data->progress.uploaded);
      FUNC1(data, false);
      if(result)
        FUNC2(data, "Callback aborted");
      return result;
    }

    if(showprogress)
      FUNC4(conn);
  }

  return 0;
}
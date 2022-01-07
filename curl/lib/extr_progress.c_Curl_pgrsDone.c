
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {struct Curl_easy* data; } ;
struct TYPE_4__ {int flags; scalar_t__ speeder_c; int callback; scalar_t__ lastshow; } ;
struct TYPE_3__ {int err; } ;
struct Curl_easy {TYPE_2__ progress; TYPE_1__ set; } ;


 int Curl_pgrsUpdate (struct connectdata*) ;
 int PGRS_HIDE ;
 int fprintf (int ,char*) ;

int Curl_pgrsDone(struct connectdata *conn)
{
  int rc;
  struct Curl_easy *data = conn->data;
  data->progress.lastshow = 0;
  rc = Curl_pgrsUpdate(conn);
  if(rc)
    return rc;

  if(!(data->progress.flags & PGRS_HIDE) &&
     !data->progress.callback)


    fprintf(data->set.err, "\n");

  data->progress.speeder_c = 0;
  return 0;
}

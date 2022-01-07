
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pingpong {int dummy; } ;
struct ftp_conn {int * server_os; int * prevpath; int * entrypath; int ctl_valid; struct pingpong pp; } ;
struct TYPE_3__ {struct ftp_conn ftpc; } ;
struct connectdata {struct Curl_easy* data; TYPE_1__ proto; } ;
struct TYPE_4__ {int * most_recent_ftp_entrypath; } ;
struct Curl_easy {TYPE_2__ state; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_pp_disconnect (struct pingpong*) ;
 int Curl_sec_end (struct connectdata*) ;
 int FALSE ;
 int free (int *) ;
 int freedirs (struct ftp_conn*) ;
 int ftp_quit (struct connectdata*) ;

__attribute__((used)) static CURLcode ftp_disconnect(struct connectdata *conn, bool dead_connection)
{
  struct ftp_conn *ftpc = &conn->proto.ftpc;
  struct pingpong *pp = &ftpc->pp;
  if(dead_connection)
    ftpc->ctl_valid = FALSE;


  (void)ftp_quit(conn);

  if(ftpc->entrypath) {
    struct Curl_easy *data = conn->data;
    if(data->state.most_recent_ftp_entrypath == ftpc->entrypath) {
      data->state.most_recent_ftp_entrypath = ((void*)0);
    }
    free(ftpc->entrypath);
    ftpc->entrypath = ((void*)0);
  }

  freedirs(ftpc);
  free(ftpc->prevpath);
  ftpc->prevpath = ((void*)0);
  free(ftpc->server_os);
  ftpc->server_os = ((void*)0);

  Curl_pp_disconnect(pp);





  return CURLE_OK;
}

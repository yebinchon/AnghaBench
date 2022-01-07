
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct FILEPROTO {int fd; int * path; int freepath; } ;
struct TYPE_3__ {struct FILEPROTO* protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_safefree (int ) ;
 int close (int) ;

__attribute__((used)) static CURLcode file_disconnect(struct connectdata *conn,
                                bool dead_connection)
{
  struct FILEPROTO *file = conn->data->req.protop;
  (void)dead_connection;

  if(file) {
    Curl_safefree(file->freepath);
    file->path = ((void*)0);
    if(file->fd != -1)
      close(file->fd);
    file->fd = -1;
  }

  return CURLE_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct FILEPROTO {int dummy; } ;
struct TYPE_3__ {int protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int calloc (int,int) ;

__attribute__((used)) static CURLcode file_setup_connection(struct connectdata *conn)
{

  conn->data->req.protop = calloc(1, sizeof(struct FILEPROTO));
  if(!conn->data->req.protop)
    return CURLE_OUT_OF_MEMORY;

  return CURLE_OK;
}

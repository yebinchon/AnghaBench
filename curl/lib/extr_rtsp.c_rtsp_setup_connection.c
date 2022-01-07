
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct RTSP {int dummy; } ;
struct TYPE_3__ {struct RTSP* protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 struct RTSP* calloc (int,int) ;

__attribute__((used)) static CURLcode rtsp_setup_connection(struct connectdata *conn)
{
  struct RTSP *rtsp;

  conn->data->req.protop = rtsp = calloc(1, sizeof(struct RTSP));
  if(!rtsp)
    return CURLE_OUT_OF_MEMORY;

  return CURLE_OK;
}

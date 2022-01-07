
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct SMTP {scalar_t__ transfer; } ;
struct TYPE_3__ {struct SMTP* protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_setup_transfer (TYPE_2__*,int,int,int ,int) ;
 int FALSE ;
 scalar_t__ FTPTRANSFER_BODY ;

__attribute__((used)) static CURLcode smtp_dophase_done(struct connectdata *conn, bool connected)
{
  struct SMTP *smtp = conn->data->req.protop;

  (void)connected;

  if(smtp->transfer != FTPTRANSFER_BODY)

    Curl_setup_transfer(conn->data, -1, -1, FALSE, -1);

  return CURLE_OK;
}

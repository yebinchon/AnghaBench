
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct TELNET {int * telnet_vars; } ;
struct TYPE_3__ {scalar_t__ protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_safefree (scalar_t__) ;
 int curl_slist_free_all (int *) ;

__attribute__((used)) static CURLcode telnet_done(struct connectdata *conn,
                                 CURLcode status, bool premature)
{
  struct TELNET *tn = (struct TELNET *)conn->data->req.protop;
  (void)status;
  (void)premature;

  if(!tn)
    return CURLE_OK;

  curl_slist_free_all(tn->telnet_vars);
  tn->telnet_vars = ((void*)0);

  Curl_safefree(conn->data->req.protop);

  return CURLE_OK;
}

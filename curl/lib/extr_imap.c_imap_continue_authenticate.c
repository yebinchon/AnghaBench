
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {int pp; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int Curl_pp_sendf (int *,char*,char const*) ;

__attribute__((used)) static CURLcode imap_continue_authenticate(struct connectdata *conn,
                                           const char *resp)
{
  struct imap_conn *imapc = &conn->proto.imapc;

  return Curl_pp_sendf(&imapc->pp, "%s", resp);
}

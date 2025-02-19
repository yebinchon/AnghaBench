
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imap_conn {scalar_t__ state; int pp; } ;
struct TYPE_2__ {struct imap_conn imapc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ Curl_pp_statemach (int *,int ,int) ;
 scalar_t__ IMAP_STOP ;
 int TRUE ;

__attribute__((used)) static CURLcode imap_block_statemach(struct connectdata *conn,
                                     bool disconnecting)
{
  CURLcode result = CURLE_OK;
  struct imap_conn *imapc = &conn->proto.imapc;

  while(imapc->state != IMAP_STOP && !result)
    result = Curl_pp_statemach(&imapc->pp, TRUE, disconnecting);

  return result;
}

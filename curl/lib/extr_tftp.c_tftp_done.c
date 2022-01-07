
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int error; } ;
typedef TYPE_2__ tftp_state_data_t ;
struct TYPE_3__ {scalar_t__ tftpc; } ;
struct connectdata {TYPE_1__ proto; } ;
typedef int CURLcode ;


 int CURLE_ABORTED_BY_CALLBACK ;
 int CURLE_OK ;
 scalar_t__ Curl_pgrsDone (struct connectdata*) ;
 int tftp_translate_code (int ) ;

__attribute__((used)) static CURLcode tftp_done(struct connectdata *conn, CURLcode status,
                          bool premature)
{
  CURLcode result = CURLE_OK;
  tftp_state_data_t *state = (tftp_state_data_t *)conn->proto.tftpc;

  (void)status;
  (void)premature;

  if(Curl_pgrsDone(conn))
    return CURLE_ABORTED_BY_CALLBACK;


  if(state)
    result = tftp_translate_code(state->error);

  return result;
}

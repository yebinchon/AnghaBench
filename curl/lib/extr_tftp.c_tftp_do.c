
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
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_TFTP_ILLEGAL ;
 int FALSE ;
 scalar_t__ tftp_connect (struct connectdata*,int*) ;
 scalar_t__ tftp_perform (struct connectdata*,int*) ;
 scalar_t__ tftp_translate_code (int ) ;

__attribute__((used)) static CURLcode tftp_do(struct connectdata *conn, bool *done)
{
  tftp_state_data_t *state;
  CURLcode result;

  *done = FALSE;

  if(!conn->proto.tftpc) {
    result = tftp_connect(conn, done);
    if(result)
      return result;
  }

  state = (tftp_state_data_t *)conn->proto.tftpc;
  if(!state)
    return CURLE_TFTP_ILLEGAL;

  result = tftp_perform(conn, done);



  if(!result)

    result = tftp_translate_code(state->error);

  return result;
}

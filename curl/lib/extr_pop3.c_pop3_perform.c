
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* tcpconnect; } ;
struct connectdata {TYPE_4__* data; TYPE_2__ bits; } ;
struct POP3 {int transfer; } ;
struct TYPE_5__ {scalar_t__ opt_no_body; } ;
struct TYPE_7__ {struct POP3* protop; } ;
struct TYPE_8__ {TYPE_1__ set; TYPE_3__ req; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 int DEBUGF (int ) ;
 int FALSE ;
 size_t FIRSTSOCKET ;
 int FTPTRANSFER_INFO ;
 int infof (TYPE_4__*,char*) ;
 scalar_t__ pop3_multi_statemach (struct connectdata*,int*) ;
 scalar_t__ pop3_perform_command (struct connectdata*) ;

__attribute__((used)) static CURLcode pop3_perform(struct connectdata *conn, bool *connected,
                             bool *dophase_done)
{

  CURLcode result = CURLE_OK;
  struct POP3 *pop3 = conn->data->req.protop;

  DEBUGF(infof(conn->data, "DO phase starts\n"));

  if(conn->data->set.opt_no_body) {

    pop3->transfer = FTPTRANSFER_INFO;
  }

  *dophase_done = FALSE;


  result = pop3_perform_command(conn);
  if(result)
    return result;


  result = pop3_multi_statemach(conn, dophase_done);

  *connected = conn->bits.tcpconnect[FIRSTSOCKET];

  if(*dophase_done)
    DEBUGF(infof(conn->data, "DO phase is complete\n"));

  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
typedef scalar_t__ CURLcode ;


 int DEBUGF (int ) ;
 int FALSE ;
 int infof (int ,char*) ;
 scalar_t__ pop3_dophase_done (struct connectdata*,int ) ;
 scalar_t__ pop3_multi_statemach (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode pop3_doing(struct connectdata *conn, bool *dophase_done)
{
  CURLcode result = pop3_multi_statemach(conn, dophase_done);

  if(result)
    DEBUGF(infof(conn->data, "DO phase failed\n"));
  else if(*dophase_done) {
    result = pop3_dophase_done(conn, FALSE );

    DEBUGF(infof(conn->data, "DO phase is complete\n"));
  }

  return result;
}

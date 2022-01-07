
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
typedef scalar_t__ CURLcode ;


 int DEBUGF (int ) ;
 int FALSE ;
 scalar_t__ imap_dophase_done (struct connectdata*,int ) ;
 scalar_t__ imap_multi_statemach (struct connectdata*,int*) ;
 int infof (int ,char*) ;

__attribute__((used)) static CURLcode imap_doing(struct connectdata *conn, bool *dophase_done)
{
  CURLcode result = imap_multi_statemach(conn, dophase_done);

  if(result)
    DEBUGF(infof(conn->data, "DO phase failed\n"));
  else if(*dophase_done) {
    result = imap_dophase_done(conn, FALSE );

    DEBUGF(infof(conn->data, "DO phase is complete\n"));
  }

  return result;
}

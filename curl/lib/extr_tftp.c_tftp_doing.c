
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_ABORTED_BY_CALLBACK ;
 int Curl_now () ;
 scalar_t__ Curl_pgrsUpdate (struct connectdata*) ;
 scalar_t__ Curl_speedcheck (int ,int ) ;
 int DEBUGF (int ) ;
 int infof (int ,char*) ;
 scalar_t__ tftp_multi_statemach (struct connectdata*,int*) ;

__attribute__((used)) static CURLcode tftp_doing(struct connectdata *conn, bool *dophase_done)
{
  CURLcode result;
  result = tftp_multi_statemach(conn, dophase_done);

  if(*dophase_done) {
    DEBUGF(infof(conn->data, "DO phase is complete\n"));
  }
  else if(!result) {



    if(Curl_pgrsUpdate(conn))
      result = CURLE_ABORTED_BY_CALLBACK;
    else
      result = Curl_speedcheck(conn->data, Curl_now());
  }
  return result;
}

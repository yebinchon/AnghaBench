
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connectdata {TYPE_2__* data; } ;
struct TELNET {scalar_t__* us_preferred; scalar_t__* him_preferred; } ;
struct TYPE_3__ {scalar_t__ protop; } ;
struct TYPE_4__ {TYPE_1__ req; } ;


 int CURL_NTELOPTS ;
 int CURL_TELOPT_ECHO ;
 scalar_t__ CURL_YES ;
 int set_local_option (struct connectdata*,int,scalar_t__) ;
 int set_remote_option (struct connectdata*,int,scalar_t__) ;

__attribute__((used)) static void negotiate(struct connectdata *conn)
{
  int i;
  struct TELNET *tn = (struct TELNET *) conn->data->req.protop;

  for(i = 0; i < CURL_NTELOPTS; i++) {
    if(i == CURL_TELOPT_ECHO)
      continue;

    if(tn->us_preferred[i] == CURL_YES)
      set_local_option(conn, i, CURL_YES);

    if(tn->him_preferred[i] == CURL_YES)
      set_remote_option(conn, i, CURL_YES);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pop3_conn {scalar_t__ state; } ;
struct TYPE_2__ {struct pop3_conn pop3c; } ;
struct connectdata {TYPE_1__ proto; } ;


 int FALSE ;
 scalar_t__ POP3_CAPA ;
 int TRUE ;
 int memcmp (char*,char*,int) ;

__attribute__((used)) static bool pop3_endofresp(struct connectdata *conn, char *line, size_t len,
                           int *resp)
{
  struct pop3_conn *pop3c = &conn->proto.pop3c;


  if(len >= 4 && !memcmp("-ERR", line, 4)) {
    *resp = '-';

    return TRUE;
  }


  if(pop3c->state == POP3_CAPA) {

    if(len >= 1 && line[0] == '.')

      *resp = '+';
    else

      *resp = '*';

    return TRUE;
  }


  if(len >= 3 && !memcmp("+OK", line, 3)) {
    *resp = '+';

    return TRUE;
  }


  if(len >= 1 && line[0] == '+') {
    *resp = '*';

    return TRUE;
  }

  return FALSE;
}

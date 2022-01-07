
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmpline ;
struct smtp_conn {scalar_t__ state; } ;
struct TYPE_2__ {struct smtp_conn smtpc; } ;
struct connectdata {TYPE_1__ proto; } ;


 int FALSE ;
 int ISDIGIT (char) ;
 scalar_t__ SMTP_COMMAND ;
 scalar_t__ SMTP_EHLO ;
 int TRUE ;
 int curlx_sltosi (int ) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static bool smtp_endofresp(struct connectdata *conn, char *line, size_t len,
                           int *resp)
{
  struct smtp_conn *smtpc = &conn->proto.smtpc;
  bool result = FALSE;


  if(len < 4 || !ISDIGIT(line[0]) || !ISDIGIT(line[1]) || !ISDIGIT(line[2]))
    return FALSE;





  if(line[3] == ' ' || len == 5) {
    char tmpline[6];

    result = TRUE;
    memset(tmpline, '\0', sizeof(tmpline));
    memcpy(tmpline, line, (len == 5 ? 5 : 3));
    *resp = curlx_sltosi(strtol(tmpline, ((void*)0), 10));


    if(*resp == 1)
      *resp = 0;
  }

  else if(line[3] == '-' &&
          (smtpc->state == SMTP_EHLO || smtpc->state == SMTP_COMMAND)) {
    result = TRUE;
    *resp = 1;
  }

  return result;
}

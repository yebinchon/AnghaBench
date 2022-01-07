
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int CURLcode ;


 int FTP_RETR_PREQUOTE ;
 int TRUE ;
 int ftp_state_quote (struct connectdata*,int ,int ) ;

__attribute__((used)) static CURLcode ftp_state_retr_prequote(struct connectdata *conn)
{

  return ftp_state_quote(conn, TRUE, FTP_RETR_PREQUOTE);
}

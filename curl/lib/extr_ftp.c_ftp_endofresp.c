
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;


 int FALSE ;
 scalar_t__ LASTLINE (char*) ;
 int TRUE ;
 int curlx_sltosi (int ) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static bool ftp_endofresp(struct connectdata *conn, char *line, size_t len,
                          int *code)
{
  (void)conn;

  if((len > 3) && LASTLINE(line)) {
    *code = curlx_sltosi(strtol(line, ((void*)0), 10));
    return TRUE;
  }

  return FALSE;
}

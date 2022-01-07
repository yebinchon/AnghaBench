
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;
typedef int CURLcode ;


 int CURLE_OK ;

__attribute__((used)) static CURLcode pop3_dophase_done(struct connectdata *conn, bool connected)
{
  (void)conn;
  (void)connected;

  return CURLE_OK;
}

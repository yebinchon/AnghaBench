
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int dummy; } ;



bool Curl_recv_has_postponed_data(struct connectdata *conn, int sockindex)
{
  (void)conn;
  (void)sockindex;
  return 0;
}

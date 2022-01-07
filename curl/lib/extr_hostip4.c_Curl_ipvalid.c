
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {scalar_t__ ip_version; } ;


 scalar_t__ CURL_IPRESOLVE_V6 ;
 int FALSE ;
 int TRUE ;

bool Curl_ipvalid(struct connectdata *conn)
{
  if(conn->ip_version == CURL_IPRESOLVE_V6)

    return FALSE;

  return TRUE;
}

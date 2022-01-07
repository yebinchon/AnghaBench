
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
typedef int Curl_addrinfo ;


 int * Curl_ipv4_resolve_r (char const*,int) ;
 int infof (int ,char*,char const*) ;

Curl_addrinfo *Curl_getaddrinfo(struct connectdata *conn,
                                const char *hostname,
                                int port,
                                int *waitp)
{
  Curl_addrinfo *ai = ((void*)0);





  *waitp = 0;

  ai = Curl_ipv4_resolve_r(hostname, port);
  if(!ai)
    infof(conn->data, "Curl_ipv4_resolve_r failed for %s\n", hostname);

  return ai;
}

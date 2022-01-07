
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Curl_URL {int portnum; } ;
typedef struct Curl_URL CURLU ;


 int DUP (struct Curl_URL*,struct Curl_URL*,int ) ;
 struct Curl_URL* calloc (int,int) ;
 int curl_url_cleanup (struct Curl_URL*) ;
 int fragment ;
 int host ;
 int options ;
 int password ;
 int path ;
 int port ;
 int query ;
 int scheme ;
 int user ;

CURLU *curl_url_dup(CURLU *in)
{
  struct Curl_URL *u = calloc(sizeof(struct Curl_URL), 1);
  if(u) {
    DUP(u, in, scheme);
    DUP(u, in, user);
    DUP(u, in, password);
    DUP(u, in, options);
    DUP(u, in, host);
    DUP(u, in, port);
    DUP(u, in, path);
    DUP(u, in, query);
    DUP(u, in, fragment);
    u->portnum = in->portnum;
  }
  return u;
  fail:
  curl_url_cleanup(u);
  return ((void*)0);
}

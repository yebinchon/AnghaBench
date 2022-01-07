
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Cookie {int creationtime; int httponly; int livecookie; int secure; int tailmatch; int expires; } ;


 int CLONE (int ) ;
 struct Cookie* calloc (int,int) ;
 int domain ;
 int expirestr ;
 int freecookie (struct Cookie*) ;
 int maxage ;
 int name ;
 int path ;
 int spath ;
 int value ;
 int version ;

__attribute__((used)) static struct Cookie *dup_cookie(struct Cookie *src)
{
  struct Cookie *d = calloc(sizeof(struct Cookie), 1);
  if(d) {
    CLONE(expirestr);
    CLONE(domain);
    CLONE(path);
    CLONE(spath);
    CLONE(name);
    CLONE(value);
    CLONE(maxage);
    CLONE(version);
    d->expires = src->expires;
    d->tailmatch = src->tailmatch;
    d->secure = src->secure;
    d->livecookie = src->livecookie;
    d->httponly = src->httponly;
    d->creationtime = src->creationtime;
  }
  return d;

  fail:
  freecookie(d);
  return ((void*)0);
}

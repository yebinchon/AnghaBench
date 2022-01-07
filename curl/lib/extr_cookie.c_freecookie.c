
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Cookie {struct Cookie* version; struct Cookie* maxage; struct Cookie* value; struct Cookie* name; struct Cookie* spath; struct Cookie* path; struct Cookie* domain; struct Cookie* expirestr; } ;


 int free (struct Cookie*) ;

__attribute__((used)) static void freecookie(struct Cookie *co)
{
  free(co->expirestr);
  free(co->domain);
  free(co->path);
  free(co->spath);
  free(co->name);
  free(co->value);
  free(co->maxage);
  free(co->version);
  free(co);
}

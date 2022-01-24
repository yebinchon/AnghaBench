#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct CookieInfo {struct Cookie** cookies; } ;
struct Cookie {struct Cookie* next; int /*<<< orphan*/  spath; int /*<<< orphan*/  domain; scalar_t__ tailmatch; scalar_t__ secure; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Cookie*) ; 
 int TRUE ; 
 int /*<<< orphan*/  cookie_sort ; 
 size_t FUNC1 (char const*) ; 
 struct Cookie* FUNC2 (struct Cookie*) ; 
 int /*<<< orphan*/  FUNC3 (struct Cookie**) ; 
 int FUNC4 (char const*) ; 
 struct Cookie** FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct Cookie**,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct CookieInfo*) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*) ; 

struct Cookie *FUNC11(struct CookieInfo *c,
                                   const char *host, const char *path,
                                   bool secure)
{
  struct Cookie *newco;
  struct Cookie *co;
  struct Cookie *mainco = NULL;
  size_t matches = 0;
  bool is_ip;
  const size_t myhash = FUNC1(host);

  if(!c || !c->cookies[myhash])
    return NULL; /* no cookie struct or no cookies in the struct */

  /* at first, remove expired cookies */
  FUNC8(c);

  /* check if host is an IP(v4|v6) address */
  is_ip = FUNC4(host);

  co = c->cookies[myhash];

  while(co) {
    /* if the cookie requires we're secure we must only continue if we are! */
    if(co->secure?secure:TRUE) {

      /* now check if the domain is correct */
      if(!co->domain ||
         (co->tailmatch && !is_ip && FUNC10(co->domain, host)) ||
         ((!co->tailmatch || is_ip) && FUNC9(host, co->domain)) ) {
        /* the right part of the host matches the domain stuff in the
           cookie data */

        /* now check the left part of the path with the cookies path
           requirement */
        if(!co->spath || FUNC6(co->spath, path) ) {

          /* and now, we know this is a match and we should create an
             entry for the return-linked-list */

          newco = FUNC2(co);
          if(newco) {
            /* then modify our next */
            newco->next = mainco;

            /* point the main to us */
            mainco = newco;

            matches++;
          }
          else
            goto fail;
        }
      }
    }
    co = co->next;
  }

  if(matches) {
    /* Now we need to make sure that if there is a name appearing more than
       once, the longest specified path version comes first. To make this
       the swiftest way, we just sort them all based on path length. */
    struct Cookie **array;
    size_t i;

    /* alloc an array and store all cookie pointers */
    array = FUNC5(sizeof(struct Cookie *) * matches);
    if(!array)
      goto fail;

    co = mainco;

    for(i = 0; co; co = co->next)
      array[i++] = co;

    /* now sort the cookie pointers in path length order */
    FUNC7(array, matches, sizeof(struct Cookie *), cookie_sort);

    /* remake the linked list order according to the new order */

    mainco = array[0]; /* start here */
    for(i = 0; i<matches-1; i++)
      array[i]->next = array[i + 1];
    array[matches-1]->next = NULL; /* terminate the list */

    FUNC3(array); /* remove the temporary data again */
  }

  return mainco; /* return the new list */

fail:
  /* failure, clear up the allocated chain and return NULL */
  FUNC0(mainco);
  return NULL;
}
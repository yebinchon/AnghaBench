#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const** protocols; char const* version; char const* host; char const* ssl_version; char const* libz_version; char const* ares; char const* libidn; char const* libssh_version; } ;
typedef  TYPE_1__ curl_version_info_data ;
typedef  scalar_t__ CURLversion ;

/* Variables and functions */
 scalar_t__ CURLVERSION_NOW ; 
 char* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LK_VERSION_INFO ; 
 int /*<<< orphan*/  LK_VERSION_INFO_DATA ; 
 int MAX_CONV_EXPANSION ; 
 scalar_t__ FUNC1 (char const**,char**,int*,unsigned int) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char const*) ; 

curl_version_info_data *
FUNC5(CURLversion stamp, unsigned int ccsid)

{
  curl_version_info_data * p;
  char *cp;
  int n;
  int nproto;
  curl_version_info_data * id;

  /* The assertion below is possible, because although the second operand
     is an enum member, the first is a #define. In that case, the OS/400 C
     compiler seems to compare string values after substitution. */

#if CURLVERSION_NOW != CURLVERSION_FOURTH
#error curl_version_info_data structure has changed: upgrade this procedure.
#endif

  /* If caller has been compiled with a new version, error. */

  if(stamp > CURLVERSION_NOW)
    return (curl_version_info_data *) NULL;

  p = FUNC2(stamp);

  if(!p)
    return p;

  /* Measure thread space needed. */

  n = 0;
  nproto = 0;

  if(p->protocols) {
    while(p->protocols[nproto])
      n += FUNC4(p->protocols[nproto++]);

    n += nproto++;
    }

  if(p->version)
    n += FUNC4(p->version) + 1;

  if(p->host)
    n += FUNC4(p->host) + 1;

  if(p->ssl_version)
    n += FUNC4(p->ssl_version) + 1;

  if(p->libz_version)
    n += FUNC4(p->libz_version) + 1;

  if(p->ares)
    n += FUNC4(p->ares) + 1;

  if(p->libidn)
    n += FUNC4(p->libidn) + 1;

  if(p->libssh_version)
    n += FUNC4(p->libssh_version) + 1;

  /* Allocate thread space. */

  n *= MAX_CONV_EXPANSION;

  if(nproto)
    n += nproto * sizeof(const char *);

  cp = FUNC0(LK_VERSION_INFO_DATA, n);
  id = (curl_version_info_data *) FUNC0(LK_VERSION_INFO,
                                                     sizeof(*id));

  if(!id || !cp)
    return (curl_version_info_data *) NULL;

  /* Copy data and convert strings. */

  FUNC3((char *) id, (char *) p, sizeof(*p));

  if(id->protocols) {
    int i = nproto * sizeof(id->protocols[0]);

    id->protocols = (const char * const *) cp;
    FUNC3(cp, (char *) p->protocols, i);
    cp += i;
    n -= i;

    for(i = 0; id->protocols[i]; i++)
      if(FUNC1(((const char * *) id->protocols) + i,
                                      &cp, &n, ccsid))
        return (curl_version_info_data *) NULL;
    }

  if(FUNC1(&id->version, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->host, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->ssl_version, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->libz_version, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->ares, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->libidn, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  if(FUNC1(&id->libssh_version, &cp, &n, ccsid))
    return (curl_version_info_data *) NULL;

  return id;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const** protocols; char const* version; char const* host; char const* ssl_version; char const* libz_version; char const* ares; char const* libidn; char const* libssh_version; } ;
typedef TYPE_1__ curl_version_info_data ;
typedef scalar_t__ CURLversion ;


 scalar_t__ CURLVERSION_NOW ;
 char* Curl_thread_buffer (int ,int) ;
 int LK_VERSION_INFO ;
 int LK_VERSION_INFO_DATA ;
 int MAX_CONV_EXPANSION ;
 scalar_t__ convert_version_info_string (char const**,char**,int*,unsigned int) ;
 TYPE_1__* curl_version_info (scalar_t__) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strlen (char const*) ;

curl_version_info_data *
curl_version_info_ccsid(CURLversion stamp, unsigned int ccsid)

{
  curl_version_info_data * p;
  char *cp;
  int n;
  int nproto;
  curl_version_info_data * id;
  if(stamp > CURLVERSION_NOW)
    return (curl_version_info_data *) ((void*)0);

  p = curl_version_info(stamp);

  if(!p)
    return p;



  n = 0;
  nproto = 0;

  if(p->protocols) {
    while(p->protocols[nproto])
      n += strlen(p->protocols[nproto++]);

    n += nproto++;
    }

  if(p->version)
    n += strlen(p->version) + 1;

  if(p->host)
    n += strlen(p->host) + 1;

  if(p->ssl_version)
    n += strlen(p->ssl_version) + 1;

  if(p->libz_version)
    n += strlen(p->libz_version) + 1;

  if(p->ares)
    n += strlen(p->ares) + 1;

  if(p->libidn)
    n += strlen(p->libidn) + 1;

  if(p->libssh_version)
    n += strlen(p->libssh_version) + 1;



  n *= MAX_CONV_EXPANSION;

  if(nproto)
    n += nproto * sizeof(const char *);

  cp = Curl_thread_buffer(LK_VERSION_INFO_DATA, n);
  id = (curl_version_info_data *) Curl_thread_buffer(LK_VERSION_INFO,
                                                     sizeof(*id));

  if(!id || !cp)
    return (curl_version_info_data *) ((void*)0);



  memcpy((char *) id, (char *) p, sizeof(*p));

  if(id->protocols) {
    int i = nproto * sizeof(id->protocols[0]);

    id->protocols = (const char * const *) cp;
    memcpy(cp, (char *) p->protocols, i);
    cp += i;
    n -= i;

    for(i = 0; id->protocols[i]; i++)
      if(convert_version_info_string(((const char * *) id->protocols) + i,
                                      &cp, &n, ccsid))
        return (curl_version_info_data *) ((void*)0);
    }

  if(convert_version_info_string(&id->version, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->host, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->ssl_version, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->libz_version, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->ares, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->libidn, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  if(convert_version_info_string(&id->libssh_version, &cp, &n, ccsid))
    return (curl_version_info_data *) ((void*)0);

  return id;
}

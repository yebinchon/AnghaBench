
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef char u_char ;
struct in6_addr {int* s6_addr8; int * s6_addr16; } ;
struct ifnet {int dummy; } ;
typedef int n ;
typedef int l ;
typedef int ctxt ;
typedef struct in6_addr SHA1_CTX ;


 int IPV6_ADDR_INT16_MLL ;
 int SHA1Final (int *,struct in6_addr*) ;
 int SHA1Init (struct in6_addr*) ;
 int SHA1Update (struct in6_addr*,char*,char) ;
 int SHA1_RESULTLEN ;
 int bcopy (int *,int*,int) ;
 int bzero (struct in6_addr*,int) ;
 scalar_t__ in6_setscope (struct in6_addr*,struct ifnet*,int *) ;
 int strlcpy (char*,char const*,char) ;

int
in6_nigroup(
 struct ifnet *ifp,
 const char *name,
 int namelen,
 struct in6_addr *in6)
{
 const char *p;
 u_char *q;
 SHA1_CTX ctxt;
 u_int8_t digest[SHA1_RESULTLEN];
 char l;
 char n[64];

 if (!namelen || !name)
  return (-1);

 p = name;
 while (p && *p && *p != '.' && p - name < namelen)
  p++;
 if (p - name > sizeof (n) - 1)
  return (-1);
 l = p - name;
 strlcpy(n, name, l);
 n[(int)l] = '\0';
 for (q = (u_char *) n; *q; q++) {
  if ('A' <= *q && *q <= 'Z')
   *q = *q - 'A' + 'a';
 }


 bzero(&ctxt, sizeof (ctxt));
 SHA1Init(&ctxt);
 SHA1Update(&ctxt, &l, sizeof (l));
 SHA1Update(&ctxt, n, l);
 SHA1Final(digest, &ctxt);

 bzero(in6, sizeof (*in6));
 in6->s6_addr16[0] = IPV6_ADDR_INT16_MLL;
 in6->s6_addr8[11] = 2;
 in6->s6_addr8[12] = 0xff;

 bcopy(digest, &in6->s6_addr8[13], 3);
 if (in6_setscope(in6, ifp, ((void*)0)))
  return (-1);

 return (0);
}

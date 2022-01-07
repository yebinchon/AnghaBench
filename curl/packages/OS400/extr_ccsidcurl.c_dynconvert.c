
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASCII_CCSID ;
 size_t MAX_CONV_EXPANSION ;
 int convert (char*,size_t,int,char const*,int,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
dynconvert(int dccsid, const char *s, int slen, int sccsid)

{
  char *d;
  char *cp;
  size_t dlen;
  int l;
  static const char nullbyte = 0;



  dlen = (size_t) (slen < 0? strlen(s): slen) + 1;
  dlen *= MAX_CONV_EXPANSION;
  d = malloc(dlen);

  if(!d)
    return (char *) ((void*)0);

  l = convert(d, dlen, dccsid, s, slen, sccsid);

  if(l < 0) {
    free(d);
    return (char *) ((void*)0);
    }

  if(slen < 0) {




    int l2 = convert(d + l, dlen - l, dccsid, &nullbyte, -1, ASCII_CCSID);

    if(l2 < 0) {
      free(d);
      return (char *) ((void*)0);
      }

    l += l2;
    }

  if((size_t) l < dlen) {
    cp = realloc(d, l);

    if(cp)
      d = cp;
    }

  return d;
}

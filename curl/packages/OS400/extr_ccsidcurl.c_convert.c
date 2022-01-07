
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int ASCII_CCSID ;
 scalar_t__ ICONV_OPEN_ERROR (int ) ;
 scalar_t__ iconv (int ,char**,size_t*,char**,size_t*) ;
 int iconv_close (int ) ;
 int iconv_open_CCSID (int,int,int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
convert(char *d, size_t dlen, int dccsid,
        const char *s, int slen, int sccsid)

{
  int i;
  iconv_t cd;
  size_t lslen;
  if(sccsid == 65535)
    sccsid = ASCII_CCSID;

  if(dccsid == 65535)
    dccsid = ASCII_CCSID;

  if(sccsid == dccsid) {
    lslen = slen >= 0? slen: strlen(s) + 1;
    i = lslen < dlen? lslen: dlen;

    if(s != d && i > 0)
      memcpy(d, s, i);

    return i;
    }

  if(slen < 0) {
    lslen = 0;
    cd = iconv_open_CCSID(dccsid, sccsid, 1);
    }
  else {
    lslen = (size_t) slen;
    cd = iconv_open_CCSID(dccsid, sccsid, 0);
    }

  if(ICONV_OPEN_ERROR(cd))
    return -1;

  i = dlen;

  if((int) iconv(cd, (char * *) &s, &lslen, &d, &dlen) < 0)
    i = -1;
  else
    i -= dlen;

  iconv_close(cd);
  return i;
}

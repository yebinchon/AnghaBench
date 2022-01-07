
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_pushheaders {int dummy; } ;


 int ASCII_CCSID ;
 char* curl_pushheader_bynum (struct curl_pushheaders*,size_t) ;
 char* dynconvert (unsigned int,char*,int,int ) ;

char *
curl_pushheader_bynum_cssid(struct curl_pushheaders *h,
                            size_t num, unsigned int ccsid)

{
  char *d = (char *) ((void*)0);
  char *s = curl_pushheader_bynum(h, num);

  if(s)
    d = dynconvert(ccsid, s, -1, ASCII_CCSID);

  return d;
}

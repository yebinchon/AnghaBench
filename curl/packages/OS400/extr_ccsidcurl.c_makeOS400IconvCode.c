
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ASCII_CCSID ;
 int ICONV_ID_SIZE ;
 unsigned int NOCONV_CCSID ;
 int curl_msprintf (char*,char*,unsigned int) ;
 int memset (char*,int ,int ) ;

__attribute__((used)) static void
makeOS400IconvCode(char buf[ICONV_ID_SIZE], unsigned int ccsid)

{
  ccsid &= 0xFFFF;

  if(ccsid == NOCONV_CCSID)
    ccsid = ASCII_CCSID;

  memset(buf, 0, ICONV_ID_SIZE);
  curl_msprintf(buf, "IBMCCSID%05u0000000", ccsid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tocode ;
typedef int iconv_t ;


 int ICONV_ID_SIZE ;
 int iconv_open (char*,char*) ;
 int makeOS400IconvCode (char*,unsigned int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static iconv_t
iconv_open_CCSID(unsigned int ccsidout, unsigned int ccsidin,
                                                        unsigned int cstr)

{
  char fromcode[ICONV_ID_SIZE];
  char tocode[ICONV_ID_SIZE];
  makeOS400IconvCode(fromcode, ccsidin);
  makeOS400IconvCode(tocode, ccsidout);
  memset(tocode + 13, 0, sizeof(tocode) - 13);

  if(cstr)
    fromcode[18] = '1';

  return iconv_open(tocode, fromcode);
}

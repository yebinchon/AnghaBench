
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_6__ {TYPE_1__* fs; } ;
struct TYPE_7__ {char* fn; TYPE_2__ obj; } ;
struct TYPE_5__ {char* lfnbuf; } ;
typedef char TCHAR ;
typedef int FRESULT ;
typedef TYPE_3__ FF_DIR ;
typedef int DWORD ;
typedef int BYTE ;


 int CODEPAGE ;
 int DDEM ;
 void** ExCvt ;
 int FF_MAX_LFN ;
 int FR_INVALID_NAME ;
 int FR_OK ;
 scalar_t__ IsLower (int) ;
 scalar_t__ IsUpper (char) ;
 size_t NSFLAG ;
 int NS_BODY ;
 int NS_DOT ;
 int NS_EXT ;
 int NS_LAST ;
 int NS_LFN ;
 int NS_LOSS ;
 void* RDDEM ;
 scalar_t__ chk_chr (char*,int) ;
 scalar_t__ dbc_1st (int) ;
 int dbc_2nd (int) ;
 char ff_uni2oem (char,int ) ;
 char ff_wtoupper (char) ;
 int mem_set (int*,char,int) ;
 int tchar2uni (char const**) ;

__attribute__((used)) static FRESULT create_name (
 FF_DIR* dp,
 const TCHAR** path
)
{
 BYTE c, d, *sfn;
 UINT ni, si, i;
 const char *p;


 p = *path; sfn = dp->fn;
 mem_set(sfn, ' ', 11);
 si = i = 0; ni = 8;
 for (;;) {
  c = (BYTE)p[si++];
  if (c <= ' ') break;
  if (c == '/' || c == '\\') {
   while (p[si] == '/' || p[si] == '\\') si++;
   break;
  }
  if (c == '.' || i >= ni) {
   if (ni == 11 || c != '.') return FR_INVALID_NAME;
   i = 8; ni = 11;
   continue;
  }

  if (ExCvt && c >= 0x80) {
   c = ExCvt[c & 0x7F];
  }





  if (dbc_1st(c)) {
   d = (BYTE)p[si++];
   if (!dbc_2nd(d) || i >= ni - 1) return FR_INVALID_NAME;
   sfn[i++] = c;
   sfn[i++] = d;
  } else {
   if (chk_chr("\"*+,:;<=>\?[]|\x7F", c)) return FR_INVALID_NAME;
   if (IsLower(c)) c -= 0x20;
   sfn[i++] = c;
  }
 }
 *path = p + si;
 if (i == 0) return FR_INVALID_NAME;

 if (sfn[0] == DDEM) sfn[0] = RDDEM;
 sfn[NSFLAG] = (c <= ' ') ? NS_LAST : 0;

 return FR_OK;

}

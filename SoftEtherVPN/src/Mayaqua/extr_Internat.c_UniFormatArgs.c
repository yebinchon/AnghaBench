
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;
typedef int UINT ;


 int Free (int *) ;
 int * InternalFormatArgs (int *,int ,int) ;
 int KS_FORMAT_COUNT ;
 int KS_INC (int ) ;
 int UniStrCpy (int *,int,int *) ;

void UniFormatArgs(wchar_t *buf, UINT size, wchar_t *fmt, va_list args)
{
 wchar_t *ret;

 if (buf == ((void*)0) || fmt == ((void*)0))
 {
  return;
 }
 if (size == 1)
 {
  return;
 }


 KS_INC(KS_FORMAT_COUNT);

 ret = InternalFormatArgs(fmt, args, 0);

 UniStrCpy(buf, size, ret);

 Free(ret);
}

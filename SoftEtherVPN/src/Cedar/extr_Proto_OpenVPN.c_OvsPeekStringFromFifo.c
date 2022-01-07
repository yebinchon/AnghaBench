
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int FIFO ;


 scalar_t__ FifoPtr (int *) ;
 int FifoSize (int *) ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int StrCpy (char*,scalar_t__,char*) ;

UINT OvsPeekStringFromFifo(FIFO *f, char *str, UINT str_size)
{
 UINT i;
 bool ok = 0;

 if (f == ((void*)0) || str == ((void*)0) || str_size == 0)
 {
  return 0;
 }

 StrCpy(str, str_size, "");

 for (i = 0;i < MIN(str_size, FifoSize(f));i++)
 {
  char c = *(((char *)FifoPtr(f)) + i);

  if (c != 0)
  {
   str[i] = c;
  }
  else
  {
   str[i] = 0;
   i++;
   ok = 1;
   break;
  }
 }

 if (ok == 0)
 {
  return 0;
 }

 return i;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;


 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ ReadBuf (int *,char*,scalar_t__) ;
 scalar_t__ ReadBufInt (int *) ;

bool ReadBufStr(BUF *b, char *str, UINT size)
{
 UINT len;
 UINT read_size;

 if (b == ((void*)0) || str == ((void*)0) || size == 0)
 {
  return 0;
 }


 len = ReadBufInt(b);
 if (len == 0)
 {
  return 0;
 }
 len--;
 if (len <= (size - 1))
 {
  size = len + 1;
 }

 read_size = MIN(len, (size - 1));


 if (ReadBuf(b, str, read_size) != read_size)
 {
  return 0;
 }
 if (read_size < len)
 {
  ReadBuf(b, ((void*)0), len - read_size);
 }
 str[read_size] = 0;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 char* CopyStr (char*) ;
 int Free (char*) ;
 int INFINITE ;
 int StrLen (char*) ;
 scalar_t__ ToUpper (char) ;
 int Trim (char*) ;
 int Zero (int*,int) ;
 scalar_t__* li_keybit_chars ;

bool LiStrToKeyBit(UCHAR *keybit, char *keystr)
{
 UINT x[36];
 UINT i, wp;
 char *str;

 if (keybit == ((void*)0) || keystr == ((void*)0))
 {
  return 0;
 }

 str = CopyStr(keystr);
 Trim(str);

 wp = 0;
 if (StrLen(str) != 41)
 {
  Free(str);
  return 0;
 }

 for (i = 0;i < 36;i++)
 {
  char c = str[wp++];
  UINT j;

  if (((i % 6) == 5) && (i != 35))
  {
   if (str[wp++] != '-')
   {
    Free(str);
    return 0;
   }
  }

  x[i] = INFINITE;
  for (j = 0;j < 32;j++)
  {
   if (ToUpper(c) == li_keybit_chars[j])
   {
    x[i] = j;
   }
  }

  if (x[i] == INFINITE)
  {
   Free(str);
   return 0;
  }
 }

 Zero(keybit, 23);

 keybit[0] = x[0] << 1 | x[1] >> 4;
 keybit[1] = x[1] << 4 | x[2] >> 1;
 keybit[2] = x[2] << 7 | x[3] << 2 | x[4] >> 3;
 keybit[3] = x[4] << 5 | x[5];

 keybit[4] = x[6] << 3 | x[7] >> 2;
 keybit[5] = x[7] << 6 | x[8] << 1 | x[9] >> 4;
 keybit[6] = x[9] << 4 | x[10] >> 1;
 keybit[7] = x[10] << 7 | x[11] << 2 | x[12] >> 3;
 keybit[8] = x[12] << 5 | x[13];

 keybit[9] = x[14] << 3 | x[15] >> 2;
 keybit[10] = x[15] << 6 | x[16] << 1 | x[17] >> 4;
 keybit[11] = x[17] << 4 | x[18] >> 1;
 keybit[12] = x[18] << 7 | x[19] << 2 | x[20] >> 3;
 keybit[13] = x[20] << 5 | x[21];

 keybit[14] = x[22] << 3 | x[23] >> 2;
 keybit[15] = x[23] << 6 | x[24] << 1 | x[25] >> 4;
 keybit[16] = x[25] << 4 | x[26] >> 1;
 keybit[17] = x[26] << 7 | x[27] << 2 | x[28] >> 3;
 keybit[18] = x[28] << 5 | x[29];

 keybit[19] = x[30] << 3 | x[31] >> 2;
 keybit[20] = x[31] << 6 | x[32] << 1 | x[33] >> 4;
 keybit[21] = x[33] << 4 | x[34] >> 1;
 keybit[22] = x[34] << 7 | x[35] << 2;

 Free(str);

 return 1;
}

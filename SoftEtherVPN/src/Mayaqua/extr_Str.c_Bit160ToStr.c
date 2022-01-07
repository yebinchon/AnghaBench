
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int Format (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void Bit160ToStr(char *str, UCHAR *data)
{

 if (str == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 Format(str, 0,
  "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
  data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7], data[8], data[9],
  data[10], data[11], data[12], data[13], data[14], data[15], data[16], data[17], data[18], data[19]);
}

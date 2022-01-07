
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT4 ;



__attribute__((used)) static void Decode (UINT4 *output, unsigned char *input, unsigned int len)
{
unsigned int i, j;

for (i = 0, j = 0; j < len; i++, j += 4)
  output[i] = ((UINT4)input[j]) | (((UINT4)input[j+1]) << 8) | (((UINT4)input[j+2]) << 16) | (((UINT4)input[j+3]) << 24);
}

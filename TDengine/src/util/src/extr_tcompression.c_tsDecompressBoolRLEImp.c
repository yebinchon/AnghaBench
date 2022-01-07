
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char INT8MASK (int) ;
 int memset (char* const,char,unsigned int) ;

int tsDecompressBoolRLEImp(const char *const input, const int nelements, char *const output) {
  int ipos = 0, opos = 0;
  while (1) {
    char encode = input[ipos++];
    unsigned counter = (encode >> 1) & INT8MASK(7);
    char value = encode & INT8MASK(1);

    memset(output + opos, value, counter);
    opos += counter;
    if (opos >= nelements) {
      return nelements;
    }
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BITS_PER_BYTE ;
 char const INT8MASK (int) ;
 char TSDB_DATA_BOOL_NULL ;

int tsDecompressBoolImp(const char *const input, const int nelements, char *const output) {
  int ipos = -1, opos = 0;
  int ele_per_byte = BITS_PER_BYTE / 2;

  for (int i = 0; i < nelements; i++) {
    if (i % ele_per_byte == 0) {
      ipos++;
    }

    uint8_t ele = (input[ipos] >> (2 * (i % ele_per_byte))) & INT8MASK(2);
    if (ele == 1) {
      output[opos++] = 1;
    } else if (ele == 2) {
      output[opos++] = TSDB_DATA_BOOL_NULL;
    } else {
      output[opos++] = 0;
    }
  }

  return nelements;
}

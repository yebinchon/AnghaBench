
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BITS_PER_BYTE ;
 char const TSDB_DATA_BOOL_NULL ;
 int exit (int) ;
 int perror (char*) ;

int tsCompressBoolImp(const char *const input, const int nelements, char *const output) {
  int pos = -1;
  int ele_per_byte = BITS_PER_BYTE / 2;

  for (int i = 0; i < nelements; i++) {
    if (i % ele_per_byte == 0) {
      pos++;
      output[pos] = 0;
    }

    uint8_t t = 0;
    if (input[i] == 1) {
      t = (((uint8_t)1) << (2 * (i % ele_per_byte)));
      output[pos] |= t;
    } else if (input[i] == 0) {
      t = ((uint8_t)1 << (2 * (i % ele_per_byte))) - 1;

      output[pos] &= t;
    } else if (input[i] == TSDB_DATA_BOOL_NULL) {
      t = ((uint8_t)2 << (2 * (i % ele_per_byte)));

      output[pos] |= t;
    } else {
      perror("Wrong bool value.\n");
      exit(1);
    }
  }

  return pos + 1;
}

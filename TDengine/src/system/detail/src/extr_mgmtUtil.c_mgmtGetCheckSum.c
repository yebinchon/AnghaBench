
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int data ;
typedef int FILE ;


 int fread (scalar_t__*,int,int,int *) ;

uint64_t mgmtGetCheckSum(FILE* fp, int offset) {
  uint64_t checksum = 0;
  uint64_t data;
  int bytes;

  while (1) {
    data = 0;
    bytes = fread(&data, sizeof(data), 1, fp);

    if (bytes != sizeof(data)) break;

    checksum += data;
  }

  return checksum;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ONE_STAGE_COMP ;
 char TWO_STAGE_COMP ;
 int assert (int ) ;
 int tsDecompressStringImp (char const* const,int,char* const,int) ;
 int tsDecompressTimestampImp (char* const,int const,char* const) ;

int tsDecompressTimestamp(const char *const input, int compressedSize, const int nelements, char *const output,
                          int outputSize, char algorithm, char *const buffer, int bufferSize) {
  if (algorithm == ONE_STAGE_COMP) {
    return tsDecompressTimestampImp(input, nelements, output);
  } else if (algorithm == TWO_STAGE_COMP) {
    tsDecompressStringImp(input, compressedSize, buffer, bufferSize);
    return tsDecompressTimestampImp(buffer, nelements, output);
  } else {
    assert(0);
  }
}

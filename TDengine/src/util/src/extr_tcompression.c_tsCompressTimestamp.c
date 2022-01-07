
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ONE_STAGE_COMP ;
 char TWO_STAGE_COMP ;
 int assert (int ) ;
 int tsCompressStringImp (char* const,int,char* const,int) ;
 int tsCompressTimestampImp (char const* const,int const,char* const) ;

int tsCompressTimestamp(const char *const input, int inputSize, const int nelements, char *const output, int outputSize,
                        char algorithm, char *const buffer, int bufferSize) {
  if (algorithm == ONE_STAGE_COMP) {
    return tsCompressTimestampImp(input, nelements, output);
  } else if (algorithm == TWO_STAGE_COMP) {
    int len = tsCompressTimestampImp(input, nelements, buffer);
    return tsCompressStringImp(buffer, len, output, outputSize);
  } else {
    assert(0);
  }
}

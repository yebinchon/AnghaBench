
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ONE_STAGE_COMP ;
 int TSDB_DATA_TYPE_SMALLINT ;
 char TWO_STAGE_COMP ;
 int assert (int ) ;
 int tsCompressINTImp (char const* const,int const,char* const,int ) ;
 int tsCompressStringImp (char* const,int,char* const,int) ;

int tsCompressSmallint(const char *const input, int inputSize, const int nelements, char *const output, int outputSize, char algorithm,
                       char *const buffer, int bufferSize) {
  if (algorithm == ONE_STAGE_COMP) {
    return tsCompressINTImp(input, nelements, output, TSDB_DATA_TYPE_SMALLINT);
  } else if (algorithm == TWO_STAGE_COMP) {
    int len = tsCompressINTImp(input, nelements, buffer, TSDB_DATA_TYPE_SMALLINT);
    return tsCompressStringImp(buffer, len, output, outputSize);
  } else {
    assert(0);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char ONE_STAGE_COMP ;
 int TSDB_DATA_TYPE_SMALLINT ;
 char TWO_STAGE_COMP ;
 int assert (int ) ;
 int tsDecompressINTImp (char* const,int const,char* const,int ) ;
 int tsDecompressStringImp (char const* const,int,char* const,int) ;

int tsDecompressSmallint(const char *const input, int compressedSize, const int nelements, char *const output,
                         int outputSize, char algorithm, char *const buffer, int bufferSize) {
  if (algorithm == ONE_STAGE_COMP) {
    return tsDecompressINTImp(input, nelements, output, TSDB_DATA_TYPE_SMALLINT);
  } else if (algorithm == TWO_STAGE_COMP) {
    tsDecompressStringImp(input, compressedSize, buffer, bufferSize);
    return tsDecompressINTImp(buffer, nelements, output, TSDB_DATA_TYPE_SMALLINT);
  } else {
    assert(0);
  }
}

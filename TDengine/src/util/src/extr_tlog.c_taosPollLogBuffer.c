
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SLogBuff ;


 scalar_t__ LOG_BUF_BUFFER (int *) ;
 int LOG_BUF_END (int *) ;
 int LOG_BUF_SIZE (int *) ;
 int LOG_BUF_START (int *) ;
 int MIN (int,int) ;
 int memcpy (char*,scalar_t__,int) ;

int taosPollLogBuffer(SLogBuff *tLogBuff, char *buf, int bufSize) {
  int start = LOG_BUF_START(tLogBuff);
  int end = LOG_BUF_END(tLogBuff);
  int pollSize = 0;

  if (start == end) {
    return 0;
  } else if (start < end) {
    pollSize = MIN(end - start, bufSize);

    memcpy(buf, LOG_BUF_BUFFER(tLogBuff) + start, pollSize);
    return pollSize;
  } else {
    pollSize = MIN(end + LOG_BUF_SIZE(tLogBuff) - start, bufSize);
    if (pollSize > LOG_BUF_SIZE(tLogBuff) - start) {
      int tsize = LOG_BUF_SIZE(tLogBuff) - start;
      memcpy(buf, LOG_BUF_BUFFER(tLogBuff) + start, tsize);
      memcpy(buf + tsize, LOG_BUF_BUFFER(tLogBuff), pollSize - tsize);

    } else {
      memcpy(buf, LOG_BUF_BUFFER(tLogBuff) + start, pollSize);
    }
    return pollSize;
  }
}

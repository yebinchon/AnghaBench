
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;


 int fflush (int ) ;
 char* logDir ;
 TYPE_1__* logHandle ;
 int printf (char*,char*,scalar_t__,scalar_t__) ;
 int sprintf (char*,char*,unsigned char) ;
 int stdout ;
 scalar_t__ tsAvailLogDirGB ;
 scalar_t__ tsMinimalLogDirGB ;
 scalar_t__ tsTotalLogDirGB ;
 int twrite (int ,char*,unsigned int) ;

void taosDumpData(unsigned char *msg, int len) {
  if (tsTotalLogDirGB != 0 && tsAvailLogDirGB < tsMinimalLogDirGB) {
    printf("server disk:%s space remain %.3f GB, total %.1f GB, stop dump log.\n", logDir, tsAvailLogDirGB, tsTotalLogDirGB);
    fflush(stdout);
    return;
  }

  char temp[256];
  int i, pos = 0, c = 0;

  for (i = 0; i < len; ++i) {
    sprintf(temp + pos, "%02x ", msg[i]);
    c++;
    pos += 3;
    if (c >= 16) {
      temp[pos++] = '\n';
      twrite(logHandle->fd, temp, (unsigned int)pos);
      c = 0;
      pos = 0;
    }
  }

  temp[pos++] = '\n';

  twrite(logHandle->fd, temp, (unsigned int)pos);

  return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int int16_t ;


 int SEEK_SET ;
 int TSDB_FILE_HEADER_LEN ;
 int lseek (int,int ,int ) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,char*) ;
 int twrite (int,char*,int) ;
 char* version ;
 int vnodeFileVersion ;

void vnodeCreateFileHeaderFd(int fd) {
  char temp[TSDB_FILE_HEADER_LEN / 4];
  int lineLen;

  lineLen = sizeof(temp);


  memset(temp, 0, lineLen);
  *(int16_t*)temp = vnodeFileVersion;
  sprintf(temp + sizeof(int16_t), "tsdb version: %s\n", version);

  lseek(fd, 0, SEEK_SET);
  twrite(fd, temp, lineLen);


  memset(temp, 0, lineLen);
  twrite(fd, temp, lineLen);


  memset(temp, 0, lineLen);
  twrite(fd, temp, lineLen);
  twrite(fd, temp, lineLen);
}

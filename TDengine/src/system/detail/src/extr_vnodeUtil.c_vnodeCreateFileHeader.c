
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
typedef int int16_t ;
typedef int FILE ;


 int SEEK_SET ;
 int TSDB_FILE_HEADER_LEN ;
 int fseek (int *,int ,int ) ;
 int fwrite (char*,int,int,int *) ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,char*) ;
 char* version ;
 int vnodeFileVersion ;

void vnodeCreateFileHeader(FILE* fp) {
  char temp[TSDB_FILE_HEADER_LEN / 4];
  int lineLen;

  lineLen = sizeof(temp);


  memset(temp, 0, lineLen);
  *(int16_t*)temp = vnodeFileVersion;
  sprintf(temp + sizeof(int16_t), "tsdb version: %s\n", version);

  fseek(fp, 0, SEEK_SET);
  fwrite(temp, lineLen, 1, fp);


  memset(temp, 0, lineLen);
  fwrite(temp, lineLen, 1, fp);


  memset(temp, 0, lineLen);
  fwrite(temp, lineLen, 1, fp);
  fwrite(temp, lineLen, 1, fp);
}

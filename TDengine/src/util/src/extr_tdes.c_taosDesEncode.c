
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int ENCRYPTION_MODE ;
 char* taosDesImp (unsigned char*,char*,int,int ) ;

char* taosDesEncode(int64_t key, char* src, int len) {
  if (len % 8 != 0) return ((void*)0);
  unsigned char* keyStr = (unsigned char*)(&key);
  return taosDesImp(keyStr, src, len, ENCRYPTION_MODE);
}

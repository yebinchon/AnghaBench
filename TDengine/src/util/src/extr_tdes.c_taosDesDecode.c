
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int DECRYPTION_MODE ;
 char* calloc (int,int) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 char* taosDesImp (unsigned char*,char*,int,int ) ;

char* taosDesDecode(int64_t key, char* src, int len) {
  unsigned char* keyStr = (unsigned char*)(&key);
  char* temp = calloc(len + 8, 1);
  memcpy(temp, src, len);
  len += 8;

  char* decode = taosDesImp(keyStr, temp, len, DECRYPTION_MODE);
  free(temp);

  return decode;
}

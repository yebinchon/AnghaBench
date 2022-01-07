
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 scalar_t__ errno ;
 int getTimestampInUsFromStrImpl (int ,char,int *) ;
 int strtoll (char*,char**,int) ;

int32_t getTimestampInUsFromStr(char* token, int32_t tokenlen, int64_t* ts) {
  errno = 0;
  char* endPtr = ((void*)0);


  int64_t timestamp = strtoll(token, &endPtr, 10);
  if (errno != 0) {
    return -1;
  }

  return getTimestampInUsFromStrImpl(timestamp, token[tokenlen - 1], ts);
}

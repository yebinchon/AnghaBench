
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isAllZero(const char *z, int n){
  int i;
  for(i=0; i<n; i++){
    if( z[i] ) return 0;
  }
  return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int areaseek ;
typedef int arearw ;
typedef int areaeof ;
typedef int areaclose ;


 int * areaClose ;
 int * areaEof ;
 int * areaRead ;
 int * areaSeek ;
 int * areaWrite ;
 scalar_t__ fclose ;
 scalar_t__ feof ;
 scalar_t__ fread ;
 scalar_t__ fseek ;
 scalar_t__ fwrite ;
 int * gzRead2 ;
 int * gzWrite2 ;
 scalar_t__ gzclose ;
 scalar_t__ gzeof ;
 scalar_t__ gzseek ;

__attribute__((used)) static void set_cbs(int gz)
{
  if (gz) {
    areaRead = gzRead2;
    areaWrite = gzWrite2;
    areaEof = (areaeof *) gzeof;
    areaSeek = (areaseek *) gzseek;
    areaClose = (areaclose *) gzclose;
  } else {
    areaRead = (arearw *) fread;
    areaWrite = (arearw *) fwrite;
    areaEof = (areaeof *) feof;
    areaSeek = (areaseek *) fseek;
    areaClose = (areaclose *) fclose;
  }
}

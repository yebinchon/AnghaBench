
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memset (char*,int ,int) ;

void allocate_zero_pages(char **buf, int num_pages, int vmpgsize) {
 int i;

 for (i = 0; i < num_pages; i++) {
  buf[i] = (char*)malloc((size_t)vmpgsize * sizeof(char));
  memset(buf[i], 0, vmpgsize);
 }
}

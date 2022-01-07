
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4random_buf (void*,size_t) ;
 scalar_t__ malloc (size_t) ;

void allocate_random_pages(char **buf, int num_pages, int vmpgsize) {
 int i;

 for (i = 0; i < num_pages; i++) {
  buf[i] = (char*)malloc((size_t)vmpgsize * sizeof(char));
  arc4random_buf((void*)buf[i], (size_t)vmpgsize);
 }
}

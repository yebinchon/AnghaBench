
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memset (char*,char,int) ;

void allocate_representative_pages(char **buf, int num_pages, int vmpgsize) {
 int i, j;
 char val;

 for (j = 0; j < num_pages; j++) {
  buf[j] = (char*)malloc((size_t)vmpgsize * sizeof(char));
  val = 0;
  for (i = 0; i < vmpgsize; i += 16) {
   memset(&buf[j][i], val, 16);
   if (i < 3400 * (vmpgsize / 4096)) {
    val++;
   }
  }
 }
}

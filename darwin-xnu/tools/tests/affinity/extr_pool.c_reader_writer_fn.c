
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
reader_writer_fn(int *data, int isize)
{
 int i;

 for (i = 0; i < isize; i++) {
  data[i] += 1;
 }
}

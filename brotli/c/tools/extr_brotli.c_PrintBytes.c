
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,double) ;
 int stderr ;

__attribute__((used)) static void PrintBytes(size_t value) {
  if (value < 1024) {
    fprintf(stderr, "%d B", (int)value);
  } else if (value < 1048576) {
    fprintf(stderr, "%0.3f KiB", (double)value / 1024.0);
  } else if (value < 1073741824) {
    fprintf(stderr, "%0.3f MiB", (double)value / 1048576.0);
  } else {
    fprintf(stderr, "%0.3f GiB", (double)value / 1073741824.0);
  }
}

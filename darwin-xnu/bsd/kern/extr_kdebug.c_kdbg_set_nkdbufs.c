
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kd_buf ;


 unsigned int nkdbufs ;
 int sane_size ;

__attribute__((used)) static void
kdbg_set_nkdbufs(unsigned int value)
{





 unsigned int max_entries = (sane_size / 2) / sizeof(kd_buf);

 if (value <= max_entries) {
  nkdbufs = value;
 } else {
  nkdbufs = max_entries;
 }
}

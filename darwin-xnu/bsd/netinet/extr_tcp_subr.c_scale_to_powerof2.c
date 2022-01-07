
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int powerof2 (int) ;

__attribute__((used)) static int
scale_to_powerof2(int size) {

 int ret = size ? size : 1;

 if (!powerof2(ret)) {
  while (!powerof2(size)) {






   size = size & (size -1);
  }


  if (0 == (size << 1)) {
   ret = size;
  } else {
   ret = size << 1;
  }
 }

 return (ret);
}

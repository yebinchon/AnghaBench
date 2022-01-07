
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSE42 (int) ;
 int crc32c ;
 int crc32c_hw ;
 int crc32c_sf ;

void taosResolveCRC() {

  int sse42;
  SSE42(sse42);
  crc32c = sse42 ? crc32c_hw : crc32c_sf;





}

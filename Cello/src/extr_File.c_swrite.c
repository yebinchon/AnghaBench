
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int Stream ;
 size_t method (int ,int ,size_t (*) (int ,void*,size_t),void*,size_t) ;

size_t swrite(var self, void* input, size_t size) {
  return method(self, Stream, swrite, input, size);
}

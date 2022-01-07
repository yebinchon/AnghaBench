
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ var ;
struct Header {int dummy; } ;



struct Header* header(var self) {
  return (struct Header*)((char*)self - sizeof(struct Header));
}

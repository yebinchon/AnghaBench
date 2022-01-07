
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (void*,void*,size_t) ;

__attribute__((used)) static inline void bcopy_nochk(void *_src, void *_dst, size_t _len) {
 bcopy(_src, _dst, _len);
}

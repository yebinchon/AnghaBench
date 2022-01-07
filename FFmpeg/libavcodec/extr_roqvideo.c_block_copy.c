
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static inline void block_copy(unsigned char *out, unsigned char *in,
                              int outstride, int instride, int sz)
{
    int rows = sz;
    while(rows--) {
        memcpy(out, in, sz);
        out += outstride;
        in += instride;
    }
}

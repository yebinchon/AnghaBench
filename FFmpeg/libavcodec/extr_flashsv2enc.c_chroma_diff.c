
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ABSDIFF (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int chroma_diff(unsigned int c1, unsigned int c2)
{


    unsigned int t1 = (c1 & 0x000000ff) + ((c1 & 0x0000ff00) >> 8) + ((c1 & 0x00ff0000) >> 16);
    unsigned int t2 = (c2 & 0x000000ff) + ((c2 & 0x0000ff00) >> 8) + ((c2 & 0x00ff0000) >> 16);

    return (abs((int)(t1)-(int)(t2))) + (abs((int)(c1 & 0x000000ff)-(int)(c2 & 0x000000ff))) +
        (abs((int)((c1 & 0x0000ff00) >> 8)-(int)((c2 & 0x0000ff00) >> 8))) +
        (abs((int)((c1 & 0x00ff0000) >> 16)-(int)((c2 & 0x00ff0000) >> 16)));
}

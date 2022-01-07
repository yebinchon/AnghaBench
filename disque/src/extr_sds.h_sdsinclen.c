
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char* sds ;
struct TYPE_2__ {size_t len; } ;


 TYPE_1__* SDS_HDR (int,unsigned char*) ;



 int SDS_TYPE_5_LEN (unsigned char) ;


 unsigned char SDS_TYPE_BITS ;
 unsigned char SDS_TYPE_MASK ;

__attribute__((used)) static inline void sdsinclen(sds s, size_t inc) {
    unsigned char flags = s[-1];
    switch(flags&SDS_TYPE_MASK) {
        case 130:
            {
                unsigned char *fp = ((unsigned char*)s)-1;
                unsigned char newlen = SDS_TYPE_5_LEN(flags)+inc;
                *fp = 130 | (newlen << SDS_TYPE_BITS);
            }
            break;
        case 128:
            SDS_HDR(8,s)->len += inc;
            break;
        case 132:
            SDS_HDR(16,s)->len += inc;
            break;
        case 131:
            SDS_HDR(32,s)->len += inc;
            break;
        case 129:
            SDS_HDR(64,s)->len += inc;
            break;
    }
}

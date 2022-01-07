
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef int AVIOContext ;





 int SEEK_SET ;


 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;

__attribute__((used)) static uint64_t find_any_startcode(AVIOContext *bc, int64_t pos)
{
    uint64_t state = 0;

    if (pos >= 0)


        avio_seek(bc, pos, SEEK_SET);
    while (!avio_feof(bc)) {
        state = (state << 8) | avio_r8(bc);
        if ((state >> 56) != 'N')
            continue;
        switch (state) {
        case 130:
        case 129:
        case 128:
        case 131:
        case 132:
            return state;
        }
    }

    return 0;
}

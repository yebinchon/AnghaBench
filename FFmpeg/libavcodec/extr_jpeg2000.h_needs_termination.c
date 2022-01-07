
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JPEG2000_CBLK_BYPASS ;
 int JPEG2000_CBLK_TERMALL ;

__attribute__((used)) static inline int needs_termination(int style, int passno) {
    if (style & JPEG2000_CBLK_BYPASS) {
        int type = passno % 3;
        passno /= 3;
        if (type == 0 && passno > 2)
            return 2;
        if (type == 2 && passno > 2)
            return 1;
        if (style & JPEG2000_CBLK_TERMALL) {
            return passno > 2 ? 2 : 1;
        }
    }
    if (style & JPEG2000_CBLK_TERMALL)
        return 1;
    return 0;
}

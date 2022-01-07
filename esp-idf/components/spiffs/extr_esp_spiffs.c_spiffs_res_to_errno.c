
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32_t ;


 int EBADF ;
 int EEXIST ;
 int EIO ;
 int ENAMETOOLONG ;
 int ENODEV ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTSUP ;
 int EROFS ;
__attribute__((used)) static int spiffs_res_to_errno(s32_t fr)
{
    switch(fr) {
    case 128 :
        return 0;
    case 131 :
        return ENODEV;
    case 133 :
        return ENODEV;
    case 137 :
        return ENOSPC;
    case 141 :
        return EBADF;
    case 136 :
        return EEXIST;
    case 138 :
        return EEXIST;
    case 132 :
        return ENOENT;
    case 134 :
        return ENOENT;
    case 140 :
        return ENOENT;
    case 139 :
        return ENOENT;
    case 135 :
        return ENAMETOOLONG;
    case 129 :
        return EROFS;
    case 130 :
        return EROFS;
    default :
        return EIO;
    }
    return ENOTSUP;
}

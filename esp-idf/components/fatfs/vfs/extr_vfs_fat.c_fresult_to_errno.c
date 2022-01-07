
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FRESULT ;


 int EACCES ;
 int EBADF ;
 int EEXIST ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int ENFILE ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTSUP ;
 int ENXIO ;
 int ETIMEDOUT ;
 int assert (int) ;

__attribute__((used)) static int fresult_to_errno(FRESULT fr)
{
    switch(fr) {
        case 146: return EIO;
        case 144:
            assert(0 && "fatfs internal error");
            return EIO;
        case 135: return ENODEV;
        case 134: return ENOENT;
        case 132: return ENOENT;
        case 142: return EINVAL;
        case 147: return EACCES;
        case 145: return EEXIST;
        case 141: return EBADF;
        case 128: return EACCES;
        case 143: return ENXIO;
        case 137: return ENODEV;
        case 133: return ENODEV;
        case 138: return EINTR;
        case 130: return ETIMEDOUT;
        case 139: return EACCES;
        case 136: return ENOMEM;
        case 129: return ENFILE;
        case 140: return EINVAL;
        case 131: return 0;
    }
    assert(0 && "unhandled FRESULT");
    return ENOTSUP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;





 int MZ_OPEN_MODE_APPEND ;
 int MZ_OPEN_MODE_CREATE ;
 int MZ_OPEN_MODE_READ ;
 int MZ_OPEN_MODE_WRITE ;

__attribute__((used)) static int32_t zipConvertAppendToStreamMode(int append)
{
    int32_t mode = MZ_OPEN_MODE_WRITE;
    switch (append)
    {
    case 129:
        mode |= MZ_OPEN_MODE_CREATE;
        break;
    case 128:
        mode |= MZ_OPEN_MODE_CREATE | MZ_OPEN_MODE_APPEND;
        break;
    case 130:
        mode |= MZ_OPEN_MODE_READ | MZ_OPEN_MODE_APPEND;
        break;
    }
    return mode;
}

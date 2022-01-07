
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_cParameter ;
__attribute__((used)) static int ZSTD_isUpdateAuthorized(ZSTD_cParameter param)
{
    switch(param)
    {
    case 148:
    case 141:
    case 150:
    case 131:
    case 135:
    case 129:
    case 130:
        return 1;

    case 142:
    case 128:
    case 147:
    case 149:
    case 146:
    case 143 :
    case 134:
    case 140:
    case 133:
    case 132:
    case 145:
    case 138:
    case 136:
    case 139:
    case 137:
    case 144:
    default:
        return 0;
    }
}

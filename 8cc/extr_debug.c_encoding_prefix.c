
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *encoding_prefix(int enc) {
    switch (enc) {
    case 131: return "u";
    case 130: return "U";
    case 129: return "u8";
    case 128: return "L";
    }
    return "";
}

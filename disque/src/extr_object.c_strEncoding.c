
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strEncoding(int encoding) {
    switch(encoding) {
    case 128: return "raw";
    case 129: return "int";
    case 130: return "embstr";
    default: return "unknown";
    }
}

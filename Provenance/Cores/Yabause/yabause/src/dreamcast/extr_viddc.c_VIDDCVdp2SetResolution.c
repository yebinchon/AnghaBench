
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int exit (int) ;
 int printf (char*,...) ;
 int vdp2height ;
 int vdp2width ;

__attribute__((used)) static void VIDDCVdp2SetResolution(u16 TVMD) {
    int w = 0, h = 0;

    switch(TVMD & 0x03) {
        case 0:
        w = 320;
        break;
        case 1:
        w = 352;
        break;
        case 2:
        w = 640;
        break;
        case 3:
        w = 704;
        break;
    }

    switch((TVMD >> 4) & 0x03) {
        case 0:
        h = 224;
        break;
        case 1:
        h = 240;
        break;
        case 2:
        h = 256;
        break;
    }

    switch((TVMD >> 6) & 0x03) {
        case 2:
        case 3:
        h <<= 1;
        default:
        break;
    }

    vdp2width = w;
    vdp2height = h;

    if(w > 352 || h > 256) {
        printf("Unsupported resolution set %d x %d\n", w, h);
        printf("Bailing out!\n");
        exit(-1);
    }
}

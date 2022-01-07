
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdp1cmd_struct ;
typedef int u8 ;
typedef int Vdp1 ;



__attribute__((used)) static int
storeLineCoords(int x, int y, int i, void *arrays, Vdp1* regs, vdp1cmd_struct * cmd, u8* ram, u8* back_framebuffer) {
 int **intArrays = arrays;

 intArrays[0][i] = x;
 intArrays[1][i] = y;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buttonpacket ;

void globalButtonSet(int boardButtonIndex, int value, int panel) {
    int col = boardButtonIndex % 7;
    int row = boardButtonIndex / 7;
    int bitAddr;

    switch(panel) {
        case 130:
            bitAddr = row * 14 + col;
            break;
        case 131:
            bitAddr = row * 14 + col + 7;
            break;
        case 128:
            bitAddr = (row + 7) * 14 + col;
            break;
        case 129:
            bitAddr = (row + 7) * 14 + col + 7;
            break;
    }
    int byteAddr = bitAddr / 8;
    int bitOffset = 7-(bitAddr - (byteAddr*8));

    if(value)
        buttonpacket[4+byteAddr] |= (1 << bitOffset);
    else
        buttonpacket[4+byteAddr] &= ~(1 << bitOffset);
}

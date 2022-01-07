
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * payload; } ;
struct TYPE_4__ {TYPE_1__ s; } ;


 TYPE_2__* ledpackets ;
 int* panelLEDmap ;

void globalSet8bit(int index, uint8_t value) {
    int global_row = index / 3 / 14;
    int global_column = (index / 3) % 14;
    int channel = index % 3;
    int panel_row = global_row % 7;
    int panel_column = global_column % 7;
    int panel_index = (global_row / 7)*2+(global_column / 7);
    int addr = panelLEDmap[(panel_row*7+panel_column)*3+channel];
    addr += (addr>>5)*16;
    ledpackets[panel_index].s.payload[addr] = value;
}

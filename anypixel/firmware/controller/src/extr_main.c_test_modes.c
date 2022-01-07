
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int payload; void* type; } ;
struct TYPE_4__ {int a; TYPE_1__ s; int ua; } ;


 int BUTTONS_Read_All () ;
 int Delay (int) ;
 size_t PANEL_NW ;
 void* PKT_TYPE_8BIT_CAL ;
 void* PKT_TYPE_8BIT_RAW ;
 void* PKT_TYPE_GSVALS ;
 int UART_SendBytes (int *,int ,int) ;
 int buttonTest (int) ;
 int globalSet (int,int) ;
 int globalSet8bit (int,int) ;
 TYPE_2__* ledpackets ;
 int pack12bit (int ,int ,int) ;
 int * panelLEDmap ;
 int sendLEDpackets () ;
 int* test_intensities ;
 int * usarts ;

void test_modes() {
    int i, row, col;

    int rampStep = 10;
    int rampValue = 0;
    int rampMin, rampMax;

    while(1) {
        i = BUTTONS_Read_All();
        row = (i >> 4) & 0xF;
        col = i & 0xF;
        switch(row) {
            case 0:
            case 1:
                for(i = 0; i < 49*3; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3], test_intensities[col]);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(2000);
                if(row != 0) break;
            case 2:
                for(i = 0; i < 49*3; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], test_intensities[col]);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(2000);
                if(row != 0) break;
            case 3:
                for(i = 0; i < 49*3; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], test_intensities[col]);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(2000);
                if(row != 0) break;
            case 4:
                for(i = 0; i < 49*3; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], test_intensities[col]);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(2000);
                break;
            case 5:
                for(i = 0; i < 196; i++) {
                    globalSet8bit(i*3, i);
                    globalSet8bit(i*3+1, 0);
                    globalSet8bit(i*3+2, 0);
                }
                ledpackets[PANEL_NW].s.type = PKT_TYPE_8BIT_CAL;
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(1000);
                ledpackets[PANEL_NW].s.type = PKT_TYPE_8BIT_RAW;
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(1000);
                break;
            case 6:

                ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
                for(i = 0; i < 49*3+1; i++) {
                    if(i < 49*3)
                        pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], test_intensities[col]);
                    if(i > 0)
                        pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i-1], 0);
                    UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));

                    Delay(10);
                }
                break;
            case 7:
                rampMax = test_intensities[col];
                rampMin = test_intensities[col]/5;
                for(rampValue = rampMin; rampValue < rampMax; rampValue += rampStep) {
                    for(i = 0; i <192*3; i++) {
                        globalSet(i,rampValue);
                    }
                    for(i = 0; i < 4; i++) {
                        ledpackets[i].s.type = PKT_TYPE_GSVALS;
                        pack12bit(ledpackets[i].ua+1, 0, rampValue/2);
                    }
                    sendLEDpackets();
                    Delay(10);
                }
                Delay(1000);
                for(rampValue = rampMax; rampValue > rampMin; rampValue -= rampStep) {
                    for(i = 0; i <192*3; i++) {
                        globalSet(i,rampValue);
                    }
                    for(i = 0; i < 4; i++) {
                        ledpackets[i].s.type = PKT_TYPE_GSVALS;
                        pack12bit(ledpackets[i].ua+1, 0, rampValue/2);
                    }
                    sendLEDpackets();
                    Delay(10);
                }
                break;
            case 8:
                buttonTest(test_intensities[col]);
                break;
            case 9:
                for(i = 0; i <49*3; i++)
                    pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(1000);
                break;
            case 10:
                if( (rampMin > 600) || (rampMin < -600)) rampMin = 600;
                if(rampMin <= 0) {
                    for(i = 0; i < 49*3; i++)
                        pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 4000);
                } else {
                    for(i = 0; i < 49*3; i++)
                        pack12bit(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                }
                UART_SendBytes(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                UART_SendBytes(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                Delay(1000);
                rampMin--;
                break;
            default:
                break;
        }
    }
}

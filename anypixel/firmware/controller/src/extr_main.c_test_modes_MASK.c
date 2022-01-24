#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  payload; void* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  a; TYPE_1__ s; int /*<<< orphan*/  ua; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t PANEL_NW ; 
 void* PKT_TYPE_8BIT_CAL ; 
 void* PKT_TYPE_8BIT_RAW ; 
 void* PKT_TYPE_GSVALS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 TYPE_2__* ledpackets ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * panelLEDmap ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int* test_intensities ; 
 int /*<<< orphan*/ * usarts ; 

void FUNC8() {
    int i, row, col;

    int rampStep = 10;
    int rampValue = 0;
    int rampMin, rampMax;

    while(1) {
        i = FUNC0();
        row = (i >> 4) & 0xF;
        col = i & 0xF;
        switch(row) {
            case 0: // cycle through RGBW illumination
            case 1: // red
                for(i = 0; i < 49*3; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3], test_intensities[col]);
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(2000);
                if(row != 0) break;
            case 2: // green
                for(i = 0; i < 49*3; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+1], test_intensities[col]);
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(2000);
                if(row != 0) break;
            case 3: // blue
                for(i = 0; i < 49*3; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                for(i = 0; i < 49; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i*3+2], test_intensities[col]);
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(2000);
                if(row != 0) break;
            case 4: // white
                for(i = 0; i < 49*3; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], test_intensities[col]);
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(2000);
                break;
            case 5: // gamma correction test
                for(i = 0; i < 196; i++) {
                    FUNC5(i*3, i);
                    FUNC5(i*3+1, 0);
                    FUNC5(i*3+2, 0);
                }
                ledpackets[PANEL_NW].s.type = PKT_TYPE_8BIT_CAL;
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(1000);
                ledpackets[PANEL_NW].s.type = PKT_TYPE_8BIT_RAW;
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(1000);
                break;
            case 6: // one LED element at a time
                // Startup sequence the lights all the LEDs one at a time
                ledpackets[PANEL_NW].s.type = PKT_TYPE_GSVALS;
                for(i = 0; i < 49*3+1; i++) {
                    if(i < 49*3)
                        FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], test_intensities[col]);
                    if(i > 0)
                        FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i-1], 0);
                    FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                    FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));

                    FUNC1(10);
                }
                break;
            case 7: // Test ramp for burnin testing of LED boards
                rampMax = test_intensities[col];
                rampMin = test_intensities[col]/5;
                for(rampValue = rampMin; rampValue < rampMax; rampValue += rampStep) {
                    for(i = 0; i <192*3; i++) {
                        FUNC4(i,rampValue);
                    }
                    for(i = 0; i < 4; i++) {
                        ledpackets[i].s.type = PKT_TYPE_GSVALS;
                        FUNC6(ledpackets[i].ua+1, 0, rampValue/2);
                    }
                    FUNC7();
                    FUNC1(10);
                }
                FUNC1(1000);
                for(rampValue = rampMax; rampValue > rampMin; rampValue -= rampStep) {
                    for(i = 0; i <192*3; i++) {
                        FUNC4(i,rampValue);
                    }
                    for(i = 0; i < 4; i++) {
                        ledpackets[i].s.type = PKT_TYPE_GSVALS;
                        FUNC6(ledpackets[i].ua+1, 0, rampValue/2);
                    }
                    FUNC7();
                    FUNC1(10);
                }
                break;
            case 8: // button test
                FUNC3(test_intensities[col]);
                break;
            case 9: // clear
                for(i = 0; i <49*3; i++)
                    FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(1000);
                break;
            case 10: // thermal cycle
                if( (rampMin > 600) || (rampMin < -600))  rampMin = 600;
                if(rampMin <= 0) {
                    for(i = 0; i < 49*3; i++)
                        FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 4000);
                } else {
                    for(i = 0; i < 49*3; i++)
                        FUNC6(ledpackets[PANEL_NW].s.payload, panelLEDmap[i], 0);
                }
                FUNC2(&usarts[3], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[2], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[1], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC2(&usarts[0], ledpackets[PANEL_NW].a, sizeof(ledpackets[PANEL_NW].a));
                FUNC1(1000);
                rampMin--;
                break;
            default:
                break;
        }
    }
}
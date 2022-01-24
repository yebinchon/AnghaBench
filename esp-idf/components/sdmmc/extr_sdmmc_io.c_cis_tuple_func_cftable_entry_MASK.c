#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {char* name; } ;
typedef  TYPE_1__ cis_tuple_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static esp_err_t FUNC4(const void* p, uint8_t* data, FILE* fp)
{
    const cis_tuple_t* tuple = (const cis_tuple_t*)p;
    data++;
    int size = *(data++);
    FUNC3(fp, "TUPLE: %s, size: %d\n", tuple->name, size);
    FUNC1(size, 2);

    FUNC1(size--, 1);
    bool interface = data[0] & FUNC0(7);
    bool def = data[0] & FUNC0(6);
    int conf_ent_num = data[0] & 0x3F;
    FUNC3(fp, "  INDX: %02X, Intface: %d, Default: %d, Conf-Entry-Num: %d\n", *(data++), interface, def, conf_ent_num);

    if (interface) {
        FUNC1(size--, 1);
        FUNC3(fp, "  IF: %02X\n", *(data++));
    }

    FUNC1(size--, 1);
    bool misc = data[0] & FUNC0(7);
    int mem_space = (data[0] >> 5 )&(0x3);
    bool irq = data[0] & FUNC0(4);
    bool io_sp = data[0] & FUNC0(3);
    bool timing = data[0] & FUNC0(2);
    int power = data[0] & 3;
    FUNC3(fp, "  FS: %02X, misc: %d, mem_space: %d, irq: %d, io_space: %d, timing: %d, power: %d\n", *(data++), misc, mem_space, irq, io_sp, timing, power);

    FUNC2(power == 0);  //power descriptor is not handled yet
    FUNC2(!timing);     //timing descriptor is not handled yet
    FUNC2(!io_sp);      //io space descriptor is not handled yet

    if (irq) {
        FUNC1(size--, 1);
        bool mask = data[0] & FUNC0(4);
        FUNC3(fp, "  IR: %02X, mask: %d, ",*(data++), mask);
        if (mask) {
            FUNC1(size, 2);
            size-=2;
            FUNC3(fp, "  IRQ: %02X %02X\n", data[0], data[1]);
            data+=2;
        }
    }

    if (mem_space) {
        FUNC1(size, 2);
        size-=2;
        FUNC2(mem_space==1); //other cases not handled yet
        int len = *(uint16_t*)data;
        FUNC3(fp, "  LEN: %04X\n", len);
        data+=2;
    }

    FUNC2(misc==0);    //misc descriptor is not handled yet
    return ESP_OK;
}
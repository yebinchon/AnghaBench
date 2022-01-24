#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int parts; int invalid; char* host; int sub; char* service; char* proto; char* domain; } ;
typedef  TYPE_1__ mdns_name_t ;

/* Variables and functions */
 char* MDNS_DEFAULT_DOMAIN ; 
 char* MDNS_SUB_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static const uint8_t * FUNC3(const uint8_t * packet, const uint8_t * start, mdns_name_t * name, char * buf)
{
    size_t index = 0;
    while (start[index]) {
        if (name->parts == 4) {
            name->invalid = true;
        }
        uint8_t len = start[index++];
        if (len < 0xC0) {
            if (len > 63) {
                //length can not be more than 63
                return NULL;
            }
            uint8_t i;
            for (i=0; i<len; i++) {
                buf[i] = start[index++];
            }
            buf[len] = '\0';
            if (name->parts == 1 && buf[0] != '_'
                    && (FUNC1(buf, MDNS_DEFAULT_DOMAIN) != 0)
                    && (FUNC1(buf, "ip6") != 0)
                    && (FUNC1(buf, "in-addr") != 0)) {
                FUNC2(name->host, ".", sizeof(name->host));
                FUNC2(name->host, buf, sizeof(name->host));
            } else if (FUNC1(buf, MDNS_SUB_STR) == 0) {
                name->sub = 1;
            } else if (!name->invalid) {
                char* mdns_name_ptrs[]={name->host, name->service, name->proto, name->domain};
                FUNC0(mdns_name_ptrs[name->parts++], buf, len+1);
            }
        } else {
            size_t address = (((uint16_t)len & 0x3F) << 8) | start[index++];
            if ((packet + address) >= start) {
                //reference address can not be after where we are
                return NULL;
            }
            if (FUNC3(packet, packet + address, name, buf)) {
                return start + index;
            }
            return NULL;
        }
    }
    return start + index + 1;
}
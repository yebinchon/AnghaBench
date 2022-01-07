
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int parts; int invalid; char* host; int sub; char* service; char* proto; char* domain; } ;
typedef TYPE_1__ mdns_name_t ;


 char* MDNS_DEFAULT_DOMAIN ;
 char* MDNS_SUB_STR ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static const uint8_t * _mdns_read_fqdn(const uint8_t * packet, const uint8_t * start, mdns_name_t * name, char * buf)
{
    size_t index = 0;
    while (start[index]) {
        if (name->parts == 4) {
            name->invalid = 1;
        }
        uint8_t len = start[index++];
        if (len < 0xC0) {
            if (len > 63) {

                return ((void*)0);
            }
            uint8_t i;
            for (i=0; i<len; i++) {
                buf[i] = start[index++];
            }
            buf[len] = '\0';
            if (name->parts == 1 && buf[0] != '_'
                    && (strcasecmp(buf, MDNS_DEFAULT_DOMAIN) != 0)
                    && (strcasecmp(buf, "ip6") != 0)
                    && (strcasecmp(buf, "in-addr") != 0)) {
                strlcat(name->host, ".", sizeof(name->host));
                strlcat(name->host, buf, sizeof(name->host));
            } else if (strcasecmp(buf, MDNS_SUB_STR) == 0) {
                name->sub = 1;
            } else if (!name->invalid) {
                char* mdns_name_ptrs[]={name->host, name->service, name->proto, name->domain};
                memcpy(mdns_name_ptrs[name->parts++], buf, len+1);
            }
        } else {
            size_t address = (((uint16_t)len & 0x3F) << 8) | start[index++];
            if ((packet + address) >= start) {

                return ((void*)0);
            }
            if (_mdns_read_fqdn(packet, packet + address, name, buf)) {
                return start + index;
            }
            return ((void*)0);
        }
    }
    return start + index + 1;
}

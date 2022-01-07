
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_mbuf {int om_len; int * om_data; } ;


 int INFO ;
 int MODLOG_DFLT (int ,char*,...) ;
 struct os_mbuf* SLIST_NEXT (struct os_mbuf const*,int ) ;
 int om_next ;

void
print_mbuf(const struct os_mbuf *om)
{
    int colon, i;

    colon = 0;
    while (om != ((void*)0)) {
        if (colon) {
            MODLOG_DFLT(INFO, ":");
        } else {
            colon = 1;
        }
        for (i = 0; i < om->om_len; i++) {
            MODLOG_DFLT(INFO, "%s0x%02x", i != 0 ? ":" : "", om->om_data[i]);
        }
        om = SLIST_NEXT(om, om_next);
    }
}

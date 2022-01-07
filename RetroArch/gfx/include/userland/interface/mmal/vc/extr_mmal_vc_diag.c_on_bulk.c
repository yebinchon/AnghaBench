
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct TYPE_6__ {TYPE_1__ bulk; } ;
struct TYPE_7__ {scalar_t__ event_type; TYPE_2__ u; } ;
typedef TYPE_3__ MMAL_DBG_ENTRY_T ;


 scalar_t__ MMAL_DBG_BULK_TX ;
 int snprintf (char*,size_t,char*,char const*,int) ;

__attribute__((used)) static void on_bulk(MMAL_DBG_ENTRY_T *entry,
                    char *buf,
                    size_t buflen)
{
   const char *name = entry->event_type == MMAL_DBG_BULK_TX ? "tx" : "rx";
   snprintf(buf,buflen,"bulk %s len %d", name, entry->u.bulk.len);
}

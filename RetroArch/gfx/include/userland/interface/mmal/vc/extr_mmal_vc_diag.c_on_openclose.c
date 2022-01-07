
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event_type; } ;
typedef TYPE_1__ MMAL_DBG_ENTRY_T ;




 int snprintf (char*,size_t,char*) ;

__attribute__((used)) static void on_openclose(MMAL_DBG_ENTRY_T *entry,
                         char *buf,
                         size_t buflen)
{
   switch (entry->event_type) {
      case 128: snprintf(buf,buflen,"opened"); break;
      case 129: snprintf(buf,buflen,"closed"); break;
      default: break;
   }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* entries; int index; } ;
struct TYPE_4__ {int event_type; int time; } ;
typedef int MMAL_DBG_EVENT_TYPE_T ;
typedef TYPE_1__ MMAL_DBG_ENTRY_T ;


 int MMAL_DBG_ENTRIES_MASK ;
 int mmal_dbg_lock ;
 TYPE_3__* mmal_dbg_log ;
 int vcos_getmicrosecs () ;
 int vcos_mutex_lock (int *) ;

__attribute__((used)) static inline MMAL_DBG_ENTRY_T *mmal_log_lock_event(MMAL_DBG_EVENT_TYPE_T event_type ) {
   uint32_t index;
   MMAL_DBG_ENTRY_T *entry;
   vcos_mutex_lock(&mmal_dbg_lock);
   index = mmal_dbg_log->index++;
   entry = mmal_dbg_log->entries + (index & MMAL_DBG_ENTRIES_MASK);
   entry->time = vcos_getmicrosecs();
   entry->event_type = event_type;
   return entry;
}

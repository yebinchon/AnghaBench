
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mmal_dbg_lock ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static inline void mmal_log_unlock_event(void) {
   vcos_mutex_unlock(&mmal_dbg_lock);
}

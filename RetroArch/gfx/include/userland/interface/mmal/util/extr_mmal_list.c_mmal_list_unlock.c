
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
typedef int MMAL_LIST_T ;
typedef TYPE_1__ MMAL_LIST_PRIVATE_T ;


 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static inline void mmal_list_unlock(MMAL_LIST_T *list)
{
   vcos_mutex_unlock(&((MMAL_LIST_PRIVATE_T*)list)->lock);
}

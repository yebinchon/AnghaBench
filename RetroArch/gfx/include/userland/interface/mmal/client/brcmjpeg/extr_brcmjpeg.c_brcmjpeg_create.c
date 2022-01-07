
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int init; int ref_count; int sema; int process_lock; int lock; scalar_t__ type; } ;
typedef scalar_t__ BRCMJPEG_TYPE_T ;
typedef TYPE_1__ BRCMJPEG_T ;
typedef scalar_t__ BRCMJPEG_STATUS_T ;


 scalar_t__ BRCMJPEG_ERROR_NOMEM ;
 scalar_t__ BRCMJPEG_SUCCESS ;
 scalar_t__ BRCMJPEG_TYPE_ENCODER ;
 int LOCK () ;
 int LOCK_COMP (TYPE_1__*) ;
 int UNLOCK () ;
 int UNLOCK_COMP (TYPE_1__*) ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__* brcmjpeg_decoder ;
 TYPE_1__* brcmjpeg_encoder ;
 scalar_t__ brcmjpeg_init_decoder (TYPE_1__*) ;
 scalar_t__ brcmjpeg_init_encoder (TYPE_1__*) ;
 int brcmjpeg_init_once ;
 int brcmjpeg_release (TYPE_1__*) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__**) ;
 int once ;
 scalar_t__ vcos_mutex_create (int *,char*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_once (int *,int ) ;
 scalar_t__ vcos_semaphore_create (int *,char*,int ) ;
 int vcos_semaphore_delete (int *) ;

BRCMJPEG_STATUS_T brcmjpeg_create(BRCMJPEG_TYPE_T type, BRCMJPEG_T **ctx)
{
   BRCMJPEG_STATUS_T status = BRCMJPEG_SUCCESS;
   BRCMJPEG_T **comp;

   if (type == BRCMJPEG_TYPE_ENCODER)
      comp = &brcmjpeg_encoder;
   else
      comp = &brcmjpeg_decoder;

   vcos_once(&once, brcmjpeg_init_once);
   LOCK();
   if (!*comp)
   {
      int init1, init2, init3;
      *comp = calloc(sizeof(BRCMJPEG_T), 1);
      if (!*comp)
      {
         UNLOCK();
         return BRCMJPEG_ERROR_NOMEM;
      }
      (*comp)->type = type;
      init1 = vcos_mutex_create(&(*comp)->lock, "brcmjpeg lock") != VCOS_SUCCESS;
      init2 = vcos_mutex_create(&(*comp)->process_lock, "brcmjpeg process lock") != VCOS_SUCCESS;
      init3 = vcos_semaphore_create(&(*comp)->sema, "brcmjpeg sema", 0) != VCOS_SUCCESS;
      if (init1 | init2 | init3)
      {
         if (init1) vcos_mutex_delete(&(*comp)->lock);
         if (init2) vcos_mutex_delete(&(*comp)->process_lock);
         if (init3) vcos_semaphore_delete(&(*comp)->sema);
         free(comp);
         UNLOCK();
         return BRCMJPEG_ERROR_NOMEM;
      }
   }
   (*comp)->ref_count++;
   UNLOCK();

   LOCK_COMP(*comp);
   if (!(*comp)->init)
   {
      if (type == BRCMJPEG_TYPE_ENCODER)
         status = brcmjpeg_init_encoder(*comp);
      else
         status = brcmjpeg_init_decoder(*comp);

      (*comp)->init = status == BRCMJPEG_SUCCESS;
   }
   UNLOCK_COMP(*comp);

   if (status != BRCMJPEG_SUCCESS)
      brcmjpeg_release(*comp);

   *ctx = *comp;
   return status;
}

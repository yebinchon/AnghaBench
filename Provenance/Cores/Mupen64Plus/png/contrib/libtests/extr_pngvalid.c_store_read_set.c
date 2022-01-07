
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
struct TYPE_5__ {scalar_t__ id; struct TYPE_5__* next; int IDAT_bits; int IDAT_size; } ;
typedef TYPE_1__ png_store_file ;
struct TYPE_6__ {unsigned long IDAT_crc; int pread; scalar_t__ IDAT_pos; scalar_t__ IDAT_len; int IDAT_bits; int IDAT_size; int * next; TYPE_1__* current; TYPE_1__* saved; } ;
typedef TYPE_2__ png_store ;


 int FILE_NAME_SIZE ;
 int png_error (int ,char*) ;
 size_t safecat (char*,int,size_t,char*) ;
 size_t standard_name_from_id (char*,int,int ,scalar_t__) ;
 int store_read_buffer_next (TYPE_2__*) ;

__attribute__((used)) static void
store_read_set(png_store *ps, png_uint_32 id)
{
   png_store_file *pf = ps->saved;

   while (pf != ((void*)0))
   {
      if (pf->id == id)
      {
         ps->current = pf;
         ps->next = ((void*)0);
         ps->IDAT_size = pf->IDAT_size;
         ps->IDAT_bits = pf->IDAT_bits;
         ps->IDAT_len = 0;
         ps->IDAT_pos = 0;
         ps->IDAT_crc = 0UL;
         store_read_buffer_next(ps);
         return;
      }

      pf = pf->next;
   }

   {
      size_t pos;
      char msg[FILE_NAME_SIZE+64];

      pos = standard_name_from_id(msg, sizeof msg, 0, id);
      pos = safecat(msg, sizeof msg, pos, ": file not found");
      png_error(ps->pread, msg);
   }
}

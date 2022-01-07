
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_const_infop ;
struct TYPE_3__ {int info_ptr; } ;


 int MEMZERO (TYPE_1__) ;
 TYPE_1__ user_chunk_data ;

__attribute__((used)) static void
init_callback_info(png_const_infop info_ptr)
{
   MEMZERO(user_chunk_data);
   user_chunk_data.info_ptr = info_ptr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uio_t ;
typedef int off_t ;
struct TYPE_4__ {int uio_flags; } ;


 int UIO_FLAGS_WE_ALLOCED ;
 size_t UIO_SIZEOF (int) ;
 int hw_atomic_add (int *,int) ;
 void* kalloc (size_t) ;
 TYPE_1__* uio_createwithbuffer (int,int ,int,int,void*,size_t) ;
 int uio_t_count ;

uio_t uio_create( int a_iovcount,
      off_t a_offset,
      int a_spacetype,
      int a_iodirection )
{
 void * my_buf_p;
 size_t my_size;
 uio_t my_uio;

 my_size = UIO_SIZEOF(a_iovcount);
 my_buf_p = kalloc(my_size);
 my_uio = uio_createwithbuffer( a_iovcount,
          a_offset,
          a_spacetype,
          a_iodirection,
          my_buf_p,
          my_size );
 if (my_uio != 0) {

  my_uio->uio_flags |= UIO_FLAGS_WE_ALLOCED;



 }

 return( my_uio );
}

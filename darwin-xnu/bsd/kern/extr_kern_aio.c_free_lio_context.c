
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aio_lio_context ;


 int FREE (int *,int ) ;
 int M_TEMP ;
 int OSDecrementAtomic (int *) ;
 int lio_contexts_alloced ;

__attribute__((used)) static void
free_lio_context(aio_lio_context* context)
{





 FREE( context, M_TEMP );

}

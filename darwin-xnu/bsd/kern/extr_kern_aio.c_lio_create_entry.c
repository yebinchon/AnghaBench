
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int proc_t ;
struct TYPE_6__ {scalar_t__ aio_lio_opcode; } ;
struct TYPE_7__ {TYPE_1__ aiocb; } ;
typedef TYPE_2__ aio_workq_entry ;


 int AIO_LIO ;
 int EAGAIN ;
 scalar_t__ LIO_NOP ;
 TYPE_2__* aio_create_queue_entry (int ,int ,void*,int ) ;
 int aio_free_request (TYPE_2__*) ;

__attribute__((used)) static int
lio_create_entry(proc_t procp, user_addr_t aiocbp, void *group_tag,
  aio_workq_entry **entrypp )
{
 aio_workq_entry *entryp;
 int result;

 entryp = aio_create_queue_entry( procp, aiocbp, group_tag, AIO_LIO);
 if ( entryp == ((void*)0) ) {
  result = EAGAIN;
  goto error_exit;
 }





 if ( entryp->aiocb.aio_lio_opcode == LIO_NOP ) {
  result = 0;
  goto error_exit;
 }

 *entrypp = entryp;
 return( 0 );

error_exit:

 if ( entryp != ((void*)0) ) {




  aio_free_request(entryp);
 }

 return( result );

}

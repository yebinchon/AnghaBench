
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VTEncContext ;


 int set_async_error (int *,int ) ;

__attribute__((used)) static void clear_frame_queue(VTEncContext *vtctx)
{
    set_async_error(vtctx, 0);
}

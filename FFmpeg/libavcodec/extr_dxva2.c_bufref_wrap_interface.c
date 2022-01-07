
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int IUnknown ;
typedef int AVBufferRef ;


 int * av_buffer_create (int *,int,int ,int *,int ) ;
 int bufref_free_interface ;

__attribute__((used)) static AVBufferRef *bufref_wrap_interface(IUnknown *iface)
{
    return av_buffer_create((uint8_t*)iface, 1, bufref_free_interface, iface, 0);
}

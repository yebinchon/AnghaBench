
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int IUnknown ;


 int IUnknown_Release (int *) ;

__attribute__((used)) static void bufref_free_interface(void *opaque, uint8_t *data)
{
    IUnknown_Release((IUnknown *)opaque);
}

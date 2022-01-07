
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* description; int buf; } ;
typedef TYPE_1__ ID3v2ExtraMetaAPIC ;


 int av_buffer_unref (int *) ;
 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void free_apic(void *obj)
{
    ID3v2ExtraMetaAPIC *apic = obj;
    av_buffer_unref(&apic->buf);
    av_freep(&apic->description);
    av_freep(&apic);
}

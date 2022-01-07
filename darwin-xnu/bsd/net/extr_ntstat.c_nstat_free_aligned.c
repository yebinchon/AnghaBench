
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct align_header {int offset; int length; } ;
typedef int OSMallocTag ;


 int OSFree (char*,int ,int ) ;

__attribute__((used)) static void
nstat_free_aligned(
 void *buffer,
 OSMallocTag tag)
{
 struct align_header *hdr = (struct align_header*)(void *)((u_int8_t*)buffer - sizeof(*hdr));
 OSFree(((char*)buffer) - hdr->offset, hdr->length, tag);
}

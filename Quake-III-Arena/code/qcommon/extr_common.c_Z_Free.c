
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* rover; int used; } ;
typedef TYPE_1__ memzone_t ;
struct TYPE_6__ {int id; scalar_t__ tag; int size; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_2__ memblock_t ;
typedef int byte ;


 int Com_Error (int ,char*) ;
 int Com_Memset (void*,int,int) ;
 int ERR_DROP ;
 int ERR_FATAL ;
 scalar_t__ TAG_SMALL ;
 scalar_t__ TAG_STATIC ;
 int ZONEID ;
 TYPE_1__* mainzone ;
 TYPE_1__* smallzone ;

void Z_Free( void *ptr ) {
 memblock_t *block, *other;
 memzone_t *zone;

 if (!ptr) {
  Com_Error( ERR_DROP, "Z_Free: NULL pointer" );
 }

 block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
 if (block->id != ZONEID) {
  Com_Error( ERR_FATAL, "Z_Free: freed a pointer without ZONEID" );
 }
 if (block->tag == 0) {
  Com_Error( ERR_FATAL, "Z_Free: freed a freed pointer" );
 }

 if (block->tag == TAG_STATIC) {
  return;
 }


 if ( *(int *)((byte *)block + block->size - 4 ) != ZONEID ) {
  Com_Error( ERR_FATAL, "Z_Free: memory block wrote past end" );
 }

 if (block->tag == TAG_SMALL) {
  zone = smallzone;
 }
 else {
  zone = mainzone;
 }

 zone->used -= block->size;


 Com_Memset( ptr, 0xaa, block->size - sizeof( *block ) );

 block->tag = 0;

 other = block->prev;
 if (!other->tag) {

  other->size += block->size;
  other->next = block->next;
  other->next->prev = other;
  if (block == zone->rover) {
   zone->rover = other;
  }
  block = other;
 }

 zone->rover = block;

 other = block->next;
 if ( !other->tag ) {

  block->size += other->size;
  block->next = other->next;
  block->next->prev = block;
  if (other == zone->rover) {
   zone->rover = block;
  }
 }
}

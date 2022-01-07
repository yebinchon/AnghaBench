
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int in_cheevos; int in_lboards; int is_console_id; int format; int * field; int flags; int badge; int created; int modified; int author; int points; int desc; int title; int memaddr; int id; } ;
typedef TYPE_1__ rcheevos_readud_t ;
 int rcheevos_djb2 (char const*,size_t) ;

__attribute__((used)) static int rcheevos_read_key(void* userdata,
      const char* name, size_t length)
{
   rcheevos_readud_t* ud = (rcheevos_readud_t*)userdata;

   int common = ud->in_cheevos || ud->in_lboards;
   uint32_t hash = rcheevos_djb2(name, length);
   ud->field = ((void*)0);

   switch (hash)
   {
      case 142:
         ud->in_cheevos = 1;
         break;
      case 133:
         ud->in_lboards = 1;
         break;
      case 139:
         ud->is_console_id = 1;
         break;
      case 134:
         if (common)
            ud->field = &ud->id;
         break;
      case 131:
         if (ud->in_cheevos)
            ud->field = &ud->memaddr;
         break;
      case 132:
         if (ud->in_lboards)
            ud->field = &ud->memaddr;
         break;
      case 128:
         if (common)
            ud->field = &ud->title;
         break;
      case 137:
         if (common)
            ud->field = &ud->desc;
         break;
      case 129:
         if (ud->in_cheevos)
            ud->field = &ud->points;
         break;
      case 141:
         if (ud->in_cheevos)
            ud->field = &ud->author;
         break;
      case 130:
         if (ud->in_cheevos)
            ud->field = &ud->modified;
         break;
      case 138:
         if (ud->in_cheevos)
            ud->field = &ud->created;
         break;
      case 140:
         if (ud->in_cheevos)
            ud->field = &ud->badge;
         break;
      case 136:
         if (ud->in_cheevos)
            ud->field = &ud->flags;
         break;
      case 135:
         if (ud->in_lboards)
            ud->field = &ud->format;
         break;
      default:
         break;
   }

   return 0;
}

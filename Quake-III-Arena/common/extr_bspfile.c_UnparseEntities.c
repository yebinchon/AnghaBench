
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int key; struct TYPE_3__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_4__ {TYPE_1__* epairs; } ;


 int Error (char*) ;
 int MAX_MAP_ENTSTRING ;
 int StripTrailing (char*) ;
 char* dentdata ;
 int entdatasize ;
 TYPE_2__* entities ;
 int num_entities ;
 int sprintf (char*,char*,char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;

void UnparseEntities( void ) {
 char *buf, *end;
 epair_t *ep;
 char line[2048];
 int i;
 char key[1024], value[1024];

 buf = dentdata;
 end = buf;
 *end = 0;

 for (i=0 ; i<num_entities ; i++) {
  ep = entities[i].epairs;
  if ( !ep ) {
   continue;
  }

  strcat (end,"{\n");
  end += 2;

  for ( ep = entities[i].epairs ; ep ; ep=ep->next ) {
   strcpy (key, ep->key);
   StripTrailing (key);
   strcpy (value, ep->value);
   StripTrailing (value);

   sprintf (line, "\"%s\" \"%s\"\n", key, value);
   strcat (end, line);
   end += strlen(line);
  }
  strcat (end,"}\n");
  end += 2;

  if (end > buf + MAX_MAP_ENTSTRING) {
   Error ("Entity text too long");
  }
 }
 entdatasize = end - buf + 1;
}

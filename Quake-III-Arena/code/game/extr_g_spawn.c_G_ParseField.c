
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int gentity_t ;
struct TYPE_3__ {int type; int ofs; scalar_t__ name; } ;
typedef TYPE_1__ field_t ;
typedef int byte ;
 char* G_NewString (char const*) ;
 int Q_stricmp (scalar_t__,char const*) ;
 float atof (char const*) ;
 int atoi (char const*) ;
 TYPE_1__* fields ;
 int sscanf (char const*,char*,float*,float*,float*) ;

void G_ParseField( const char *key, const char *value, gentity_t *ent ) {
 field_t *f;
 byte *b;
 float v;
 vec3_t vec;

 for ( f=fields ; f->name ; f++ ) {
  if ( !Q_stricmp(f->name, key) ) {

   b = (byte *)ent;

   switch( f->type ) {
   case 129:
    *(char **)(b+f->ofs) = G_NewString (value);
    break;
   case 128:
    sscanf (value, "%f %f %f", &vec[0], &vec[1], &vec[2]);
    ((float *)(b+f->ofs))[0] = vec[0];
    ((float *)(b+f->ofs))[1] = vec[1];
    ((float *)(b+f->ofs))[2] = vec[2];
    break;
   case 130:
    *(int *)(b+f->ofs) = atoi(value);
    break;
   case 132:
    *(float *)(b+f->ofs) = atof(value);
    break;
   case 133:
    v = atof(value);
    ((float *)(b+f->ofs))[0] = 0;
    ((float *)(b+f->ofs))[1] = v;
    ((float *)(b+f->ofs))[2] = 0;
    break;
   default:
   case 131:
    break;
   }
   return;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {char* imgName; int wrapClampMode; int allowPicmip; int mipmap; struct TYPE_6__* next; } ;
typedef TYPE_1__ image_t ;
typedef int byte ;
struct TYPE_7__ {int (* Free ) (int *) ;int (* Printf ) (int ,char*,char*) ;} ;


 int MAX_QPATH ;
 int PRINT_ALL ;
 int PRINT_DEVELOPER ;
 TYPE_1__* R_CreateImage (char*,int *,int,int,int ,int ,int) ;
 int R_LoadImage (char const*,int **,int*,int*) ;
 long generateHashValue (char const*) ;
 TYPE_1__** hashTable ;
 TYPE_2__ ri ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int stub1 (int ,char*,char const*) ;
 int stub2 (int ,char*,char const*) ;
 int stub3 (int ,char*,char const*) ;
 int stub4 (int ,char*,char*) ;
 int stub5 (int *) ;
 char toupper (char) ;

image_t *R_FindImageFile( const char *name, qboolean mipmap, qboolean allowPicmip, int glWrapClampMode ) {
 image_t *image;
 int width, height;
 byte *pic;
 long hash;

 if (!name) {
  return ((void*)0);
 }

 hash = generateHashValue(name);




 for (image=hashTable[hash]; image; image=image->next) {
  if ( !strcmp( name, image->imgName ) ) {

   if ( strcmp( name, "*white" ) ) {
    if ( image->mipmap != mipmap ) {
     ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed mipmap parm\n", name );
    }
    if ( image->allowPicmip != allowPicmip ) {
     ri.Printf( PRINT_DEVELOPER, "WARNING: reused image %s with mixed allowPicmip parm\n", name );
    }
    if ( image->wrapClampMode != glWrapClampMode ) {
     ri.Printf( PRINT_ALL, "WARNING: reused image %s with mixed glWrapClampMode parm\n", name );
    }
   }
   return image;
  }
 }




 R_LoadImage( name, &pic, &width, &height );
 if ( pic == ((void*)0) ) {
   char altname[MAX_QPATH];
    int len;
    strcpy( altname, name );
    len = strlen( altname );
    altname[len-3] = toupper(altname[len-3]);
    altname[len-2] = toupper(altname[len-2]);
    altname[len-1] = toupper(altname[len-1]);
  ri.Printf( PRINT_ALL, "trying %s...\n", altname );
   R_LoadImage( altname, &pic, &width, &height );
    if (pic == ((void*)0)) {
      return ((void*)0);
    }
 }

 image = R_CreateImage( ( char * ) name, pic, width, height, mipmap, allowPicmip, glWrapClampMode );
 ri.Free( pic );
 return image;
}

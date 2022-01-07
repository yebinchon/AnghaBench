
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ COLOURS_EXTERNAL_t ;


 int COLOURS_EXTERNAL_Read (TYPE_1__*) ;
 int FILENAME_MAX ;
 int Util_strlcpy (int ,char*,int ) ;

int COLOURS_EXTERNAL_ReadFilename(COLOURS_EXTERNAL_t *colours, char *filename)
{
 Util_strlcpy(colours->filename, filename, FILENAME_MAX);
 return COLOURS_EXTERNAL_Read(colours);
}

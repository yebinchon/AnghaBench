
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_4__ {int * info; int * title; } ;
typedef TYPE_1__ ao_display_info ;
struct TYPE_5__ {char* inf_title; char* inf_game; char* inf_artist; char* inf_copy; char* inf_year; char* inf_length; char* inf_fade; } ;


 int AO_FAIL ;
 int AO_SUCCESS ;
 TYPE_3__* c ;
 char* psfby ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;

s32 ssf_fill_info(ao_display_info *info)
{
 if (c == ((void*)0))
  return AO_FAIL;

 strcpy(info->title[1], "Name: ");
 sprintf(info->info[1], "%s", c->inf_title);

 strcpy(info->title[2], "Game: ");
 sprintf(info->info[2], "%s", c->inf_game);

 strcpy(info->title[3], "Artist: ");
 sprintf(info->info[3], "%s", c->inf_artist);

 strcpy(info->title[4], "Copyright: ");
 sprintf(info->info[4], "%s", c->inf_copy);

 strcpy(info->title[5], "Year: ");
 sprintf(info->info[5], "%s", c->inf_year);

 strcpy(info->title[6], "Length: ");
 sprintf(info->info[6], "%s", c->inf_length);

 strcpy(info->title[7], "Fade: ");
 sprintf(info->info[7], "%s", c->inf_fade);

 strcpy(info->title[8], "Ripper: ");
 sprintf(info->info[8], "%s", psfby);

 return AO_SUCCESS;
}

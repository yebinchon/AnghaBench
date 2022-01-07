
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct card_dircntrl {scalar_t__ chksum1; scalar_t__ chksum2; scalar_t__ updated; } ;
struct card_dat {scalar_t__ chksum1; scalar_t__ chksum2; scalar_t__ updated; } ;
struct TYPE_3__ {struct card_dircntrl* curr_dir; struct card_dircntrl* workarea; } ;
typedef TYPE_1__ card_block ;


 int __card_checksum (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int memcpy (struct card_dircntrl*,struct card_dircntrl*,int) ;

__attribute__((used)) static u32 __card_checkdir(card_block *card,u32 *currdir)
{
 u32 dir,bad,bad_dir;
 u16 chksum0,chksum1;
 struct card_dircntrl *dircntrl[2];
 struct card_dat *dirblock[2];
 dir = 0;
 bad = 0;
 bad_dir = 0;
 while(dir<2) {
  dirblock[dir] = card->workarea+((dir+1)<<13);
  dircntrl[dir] = (card->workarea+((dir+1)<<13))+8128;
  __card_checksum((u16*)dirblock[dir],0x1ffc,&chksum0,&chksum1);
  if(chksum0!=dircntrl[dir]->chksum1 || chksum1!=dircntrl[dir]->chksum2) {
   card->curr_dir = ((void*)0);
   bad_dir = dir;
   bad++;
  }
  dir++;
 }

 dir = bad_dir;
 if(!bad) {
  if(dircntrl[0]->updated<dircntrl[1]->updated) dir = 0;
  else dir = 1;
 }
 if(card->curr_dir==((void*)0)) {
  card->curr_dir = dirblock[dir];
  memcpy(dirblock[dir],dirblock[dir^1],8192);
 }
 else if(card->curr_dir==dirblock[0]) dir = 0;
 else dir = 1;

 if(currdir) *currdir = dir;
 return bad;
}

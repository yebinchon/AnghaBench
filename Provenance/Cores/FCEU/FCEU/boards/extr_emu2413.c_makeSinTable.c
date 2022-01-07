
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef int int32 ;


 scalar_t__ DB_MUTE ;
 int PG_WIDTH ;
 double PI ;
 scalar_t__* fullsintable ;
 scalar_t__* halfsintable ;
 scalar_t__ lin2db (int ) ;
 int sin (double) ;

__attribute__((used)) static void makeSinTable(void) {
 int32 i;

 for (i = 0; i < PG_WIDTH / 4; i++) {
  fullsintable[i] = (uint32)lin2db(sin(2.0 * PI * i / PG_WIDTH));
 }

 for (i = 0; i < PG_WIDTH / 4; i++) {
  fullsintable[PG_WIDTH / 2 - 1 - i] = fullsintable[i];
 }

 for (i = 0; i < PG_WIDTH / 2; i++) {
  fullsintable[PG_WIDTH / 2 + i] = (uint32)(DB_MUTE + DB_MUTE + fullsintable[i]);
 }

 for (i = 0; i < PG_WIDTH / 2; i++)
  halfsintable[i] = fullsintable[i];
 for (i = PG_WIDTH / 2; i < PG_WIDTH; i++)
  halfsintable[i] = fullsintable[0];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ESIFC ;


 size_t SIFC_COUNT ;
 size_t SIFC_NONE ;

inline const char* ESIFC_Name(ESIFC esifc)
{
 static const char * const names[] =
 {
  "<none>",
  "Arkanoid Paddle",
  "Hyper Shot gun",
  "4-Player Adapter",
  "Family Keyboard",
  "Subor Keyboard",
  "PEC586 Keyboard",
  "HyperShot Pads",
  "Mahjong",
  "Quiz King Buzzers",
  "Family Trainer A",
  "Family Trainer B",
  "Oeka Kids Tablet",
  "Barcode World",
  "Top Rider"
 };

 if(esifc >= SIFC_NONE && esifc <= SIFC_COUNT)
  return names[esifc];
 else return "<invalid ESIFC>";
}

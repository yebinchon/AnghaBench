
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_44__ {float x; float y; float w; float h; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
 int UI_DrawAllMapsSelection (TYPE_1__*,float,int ,int,int ) ;
 int UI_DrawBotName (TYPE_1__*,float,int ,int) ;
 int UI_DrawBotSkill (TYPE_1__*,float,int ,int) ;
 int UI_DrawClanCinematic (TYPE_1__*,float,int ) ;
 int UI_DrawClanLogo (TYPE_1__*,float,int ) ;
 int UI_DrawClanName (TYPE_1__*,float,int ,int) ;
 int UI_DrawCrosshair (TYPE_1__*,float,int ) ;
 int UI_DrawEffects (TYPE_1__*,float,int ) ;
 int UI_DrawGLInfo (TYPE_1__*,float,int ,int) ;
 int UI_DrawGameType (TYPE_1__*,float,int ,int) ;
 int UI_DrawHandicap (TYPE_1__*,float,int ,int) ;
 int UI_DrawJoinGameType (TYPE_1__*,float,int ,int) ;
 int UI_DrawKeyBindStatus (TYPE_1__*,float,int ,int) ;
 int UI_DrawMapCinematic (TYPE_1__*,float,int ,int ) ;
 int UI_DrawMapPreview (TYPE_1__*,float,int ,int ) ;
 int UI_DrawMapTimeToBeat (TYPE_1__*,float,int ,int) ;
 int UI_DrawNetFilter (TYPE_1__*,float,int ,int) ;
 int UI_DrawNetGameType (TYPE_1__*,float,int ,int) ;
 int UI_DrawNetMapCinematic (TYPE_1__*,float,int ) ;
 int UI_DrawNetMapPreview (TYPE_1__*,float,int ) ;
 int UI_DrawNetSource (TYPE_1__*,float,int ,int) ;
 int UI_DrawOpponent (TYPE_1__*) ;
 int UI_DrawOpponentLogo (TYPE_1__*,int ) ;
 int UI_DrawOpponentLogoMetal (TYPE_1__*,int ) ;
 int UI_DrawOpponentLogoName (TYPE_1__*,int ) ;
 int UI_DrawOpponentName (TYPE_1__*,float,int ,int) ;
 int UI_DrawPlayerLogo (TYPE_1__*,int ) ;
 int UI_DrawPlayerLogoMetal (TYPE_1__*,int ) ;
 int UI_DrawPlayerLogoName (TYPE_1__*,int ) ;
 int UI_DrawPlayerModel (TYPE_1__*) ;
 int UI_DrawPreviewCinematic (TYPE_1__*,float,int ) ;
 int UI_DrawRedBlue (TYPE_1__*,float,int ,int) ;
 int UI_DrawSelectedPlayer (TYPE_1__*,float,int ,int) ;
 int UI_DrawServerMOTD (TYPE_1__*,float,int ) ;
 int UI_DrawServerRefreshDate (TYPE_1__*,float,int ,int) ;
 int UI_DrawSkill (TYPE_1__*,float,int ,int) ;
 int UI_DrawTeamMember (TYPE_1__*,float,int ,int ,int ,int) ;
 int UI_DrawTeamName (TYPE_1__*,float,int ,int ,int) ;
 int UI_DrawTier (TYPE_1__*,float,int ,int) ;
 int UI_DrawTierGameType (TYPE_1__*,float,int ,int) ;
 int UI_DrawTierMap (TYPE_1__*,int) ;
 int UI_DrawTierMapName (TYPE_1__*,float,int ,int) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void UI_OwnerDraw(float x, float y, float w, float h, float text_x, float text_y, int ownerDraw, int ownerDrawFlags, int align, float special, float scale, vec4_t color, qhandle_t shader, int textStyle) {
 rectDef_t rect;

  rect.x = x + text_x;
  rect.y = y + text_y;
  rect.w = w;
  rect.h = h;

  switch (ownerDraw) {
    case 167:
      UI_DrawHandicap(&rect, scale, color, textStyle);
      break;
    case 170:
      UI_DrawEffects(&rect, scale, color);
      break;
    case 147:
      UI_DrawPlayerModel(&rect);
      break;
    case 172:
      UI_DrawClanName(&rect, scale, color, textStyle);
      break;
    case 173:
      UI_DrawClanLogo(&rect, scale, color);
      break;
    case 174:
      UI_DrawClanCinematic(&rect, scale, color);
      break;
    case 146:
      UI_DrawPreviewCinematic(&rect, scale, color);
      break;
    case 169:
      UI_DrawGameType(&rect, scale, color, textStyle);
      break;
    case 159:
      UI_DrawNetGameType(&rect, scale, color, textStyle);
      break;
    case 166:
   UI_DrawJoinGameType(&rect, scale, color, textStyle);
   break;
    case 163:
      UI_DrawMapPreview(&rect, scale, color, qtrue);
      break;
    case 161:
      UI_DrawMapTimeToBeat(&rect, scale, color, textStyle);
      break;
    case 164:
      UI_DrawMapCinematic(&rect, scale, color, qfalse);
      break;
    case 134:
      UI_DrawMapCinematic(&rect, scale, color, qtrue);
      break;
    case 135:
      UI_DrawSkill(&rect, scale, color, textStyle);
      break;
    case 177:
      UI_DrawTeamName(&rect, scale, color, qtrue, textStyle);
      break;
    case 139:
      UI_DrawTeamName(&rect, scale, color, qfalse, textStyle);
      break;
    case 182:
  case 181:
  case 180:
  case 179:
  case 178:
      UI_DrawTeamMember(&rect, scale, color, qtrue, ownerDraw - 182 + 1, textStyle);
      break;
    case 144:
  case 143:
  case 142:
  case 141:
  case 140:
      UI_DrawTeamMember(&rect, scale, color, qfalse, ownerDraw - 144 + 1, textStyle);
      break;
  case 156:
      UI_DrawNetSource(&rect, scale, color, textStyle);
   break;
    case 157:
      UI_DrawNetMapPreview(&rect, scale, color);
      break;
    case 158:
      UI_DrawNetMapCinematic(&rect, scale, color);
      break;
  case 160:
      UI_DrawNetFilter(&rect, scale, color, textStyle);
   break;
  case 133:
   UI_DrawTier(&rect, scale, color, textStyle);
   break;
  case 152:
   UI_DrawOpponent(&rect);
   break;
  case 132:
   UI_DrawTierMap(&rect, 0);
   break;
  case 131:
   UI_DrawTierMap(&rect, 1);
   break;
  case 130:
   UI_DrawTierMap(&rect, 2);
   break;
  case 150:
   UI_DrawPlayerLogo(&rect, color);
   break;
  case 149:
   UI_DrawPlayerLogoMetal(&rect, color);
   break;
  case 148:
   UI_DrawPlayerLogoName(&rect, color);
   break;
  case 155:
   UI_DrawOpponentLogo(&rect, color);
   break;
  case 154:
   UI_DrawOpponentLogoMetal(&rect, color);
   break;
  case 153:
   UI_DrawOpponentLogoName(&rect, color);
   break;
  case 128:
   UI_DrawTierMapName(&rect, scale, color, textStyle);
   break;
  case 129:
   UI_DrawTierGameType(&rect, scale, color, textStyle);
   break;
  case 183:
   UI_DrawAllMapsSelection(&rect, scale, color, textStyle, qtrue);
   break;
  case 162:
   UI_DrawAllMapsSelection(&rect, scale, color, textStyle, qfalse);
   break;
  case 151:
   UI_DrawOpponentName(&rect, scale, color, textStyle);
   break;
  case 176:
   UI_DrawBotName(&rect, scale, color, textStyle);
   break;
  case 175:
   UI_DrawBotSkill(&rect, scale, color, textStyle);
   break;
  case 145:
   UI_DrawRedBlue(&rect, scale, color, textStyle);
   break;
  case 171:
   UI_DrawCrosshair(&rect, scale, color);
   break;
  case 138:
   UI_DrawSelectedPlayer(&rect, scale, color, textStyle);
   break;
  case 136:
   UI_DrawServerRefreshDate(&rect, scale, color, textStyle);
   break;
  case 137:
   UI_DrawServerMOTD(&rect, scale, color);
   break;
  case 168:
   UI_DrawGLInfo(&rect,scale, color, textStyle);
   break;
  case 165:
   UI_DrawKeyBindStatus(&rect,scale, color, textStyle);
   break;
    default:
      break;
  }

}

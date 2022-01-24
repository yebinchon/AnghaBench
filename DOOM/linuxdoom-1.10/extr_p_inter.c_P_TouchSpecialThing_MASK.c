#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int health; int armorpoints; int armortype; int backpack; int* maxammo; int /*<<< orphan*/  bonuscount; int /*<<< orphan*/  itemcount; int /*<<< orphan*/  message; int /*<<< orphan*/  pendingweapon; int /*<<< orphan*/  readyweapon; int /*<<< orphan*/ * cards; TYPE_1__* mo; } ;
typedef  TYPE_2__ player_t ;
struct TYPE_16__ {int z; int height; scalar_t__ health; int sprite; int flags; TYPE_2__* player; } ;
typedef  TYPE_3__ mobj_t ;
typedef  int fixed_t ;
struct TYPE_14__ {int health; } ;

/* Variables and functions */
 scalar_t__ BONUSADD ; 
 int FRACUNIT ; 
 int /*<<< orphan*/  GOTARMBONUS ; 
 int /*<<< orphan*/  GOTARMOR ; 
 int /*<<< orphan*/  GOTBACKPACK ; 
 int /*<<< orphan*/  GOTBERSERK ; 
 int /*<<< orphan*/  GOTBFG9000 ; 
 int /*<<< orphan*/  GOTBLUECARD ; 
 int /*<<< orphan*/  GOTBLUESKUL ; 
 int /*<<< orphan*/  GOTCELL ; 
 int /*<<< orphan*/  GOTCELLBOX ; 
 int /*<<< orphan*/  GOTCHAINGUN ; 
 int /*<<< orphan*/  GOTCHAINSAW ; 
 int /*<<< orphan*/  GOTCLIP ; 
 int /*<<< orphan*/  GOTCLIPBOX ; 
 int /*<<< orphan*/  GOTHTHBONUS ; 
 int /*<<< orphan*/  GOTINVIS ; 
 int /*<<< orphan*/  GOTINVUL ; 
 int /*<<< orphan*/  GOTLAUNCHER ; 
 int /*<<< orphan*/  GOTMAP ; 
 int /*<<< orphan*/  GOTMEDIKIT ; 
 int /*<<< orphan*/  GOTMEDINEED ; 
 int /*<<< orphan*/  GOTMEGA ; 
 int /*<<< orphan*/  GOTMSPHERE ; 
 int /*<<< orphan*/  GOTPLASMA ; 
 int /*<<< orphan*/  GOTREDCARD ; 
 int /*<<< orphan*/  GOTREDSKULL ; 
 int /*<<< orphan*/  GOTROCKBOX ; 
 int /*<<< orphan*/  GOTROCKET ; 
 int /*<<< orphan*/  GOTSHELLBOX ; 
 int /*<<< orphan*/  GOTSHELLS ; 
 int /*<<< orphan*/  GOTSHOTGUN ; 
 int /*<<< orphan*/  GOTSHOTGUN2 ; 
 int /*<<< orphan*/  GOTSTIM ; 
 int /*<<< orphan*/  GOTSUIT ; 
 int /*<<< orphan*/  GOTSUPER ; 
 int /*<<< orphan*/  GOTVISOR ; 
 int /*<<< orphan*/  GOTYELWCARD ; 
 int /*<<< orphan*/  GOTYELWSKUL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MF_COUNTITEM ; 
 int MF_DROPPED ; 
 int NUMAMMO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
#define  SPR_AMMO 163 
#define  SPR_ARM1 162 
#define  SPR_ARM2 161 
#define  SPR_BFUG 160 
#define  SPR_BKEY 159 
#define  SPR_BON1 158 
#define  SPR_BON2 157 
#define  SPR_BPAK 156 
#define  SPR_BROK 155 
#define  SPR_BSKU 154 
#define  SPR_CELL 153 
#define  SPR_CELP 152 
#define  SPR_CLIP 151 
#define  SPR_CSAW 150 
#define  SPR_LAUN 149 
#define  SPR_MEDI 148 
#define  SPR_MEGA 147 
#define  SPR_MGUN 146 
#define  SPR_PINS 145 
#define  SPR_PINV 144 
#define  SPR_PLAS 143 
#define  SPR_PMAP 142 
#define  SPR_PSTR 141 
#define  SPR_PVIS 140 
#define  SPR_RKEY 139 
#define  SPR_ROCK 138 
#define  SPR_RSKU 137 
#define  SPR_SBOX 136 
#define  SPR_SGN2 135 
#define  SPR_SHEL 134 
#define  SPR_SHOT 133 
#define  SPR_SOUL 132 
#define  SPR_STIM 131 
#define  SPR_SUIT 130 
#define  SPR_YKEY 129 
#define  SPR_YSKU 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int am_cell ; 
 int am_clip ; 
 int am_misl ; 
 int am_shell ; 
 int /*<<< orphan*/  commercial ; 
 size_t consoleplayer ; 
 int /*<<< orphan*/  gamemode ; 
 size_t it_bluecard ; 
 size_t it_blueskull ; 
 size_t it_redcard ; 
 size_t it_redskull ; 
 size_t it_yellowcard ; 
 size_t it_yellowskull ; 
 int /*<<< orphan*/  netgame ; 
 TYPE_2__* players ; 
 int /*<<< orphan*/  pw_allmap ; 
 int /*<<< orphan*/  pw_infrared ; 
 int /*<<< orphan*/  pw_invisibility ; 
 int /*<<< orphan*/  pw_invulnerability ; 
 int /*<<< orphan*/  pw_ironfeet ; 
 int /*<<< orphan*/  pw_strength ; 
 int sfx_getpow ; 
 int sfx_itemup ; 
 int sfx_wpnup ; 
 int /*<<< orphan*/  wp_bfg ; 
 int /*<<< orphan*/  wp_chaingun ; 
 int /*<<< orphan*/  wp_chainsaw ; 
 int /*<<< orphan*/  wp_fist ; 
 int /*<<< orphan*/  wp_missile ; 
 int /*<<< orphan*/  wp_plasma ; 
 int /*<<< orphan*/  wp_shotgun ; 
 int /*<<< orphan*/  wp_supershotgun ; 

void
FUNC9
( mobj_t*	special,
  mobj_t*	toucher )
{
    player_t*	player;
    int		i;
    fixed_t	delta;
    int		sound;
		
    delta = special->z - toucher->z;

    if (delta > toucher->height
	|| delta < -8*FRACUNIT)
    {
	// out of reach
	return;
    }
    
	
    sound = sfx_itemup;	
    player = toucher->player;

    // Dead thing touching.
    // Can happen with a sliding player corpse.
    if (toucher->health <= 0)
	return;

    // Identify by sprite.
    switch (special->sprite)
    {
	// armor
      case SPR_ARM1:
	if (!FUNC2 (player, 1))
	    return;
	player->message = GOTARMOR;
	break;
		
      case SPR_ARM2:
	if (!FUNC2 (player, 2))
	    return;
	player->message = GOTMEGA;
	break;
	
	// bonus items
      case SPR_BON1:
	player->health++;		// can go over 100%
	if (player->health > 200)
	    player->health = 200;
	player->mo->health = player->health;
	player->message = GOTHTHBONUS;
	break;
	
      case SPR_BON2:
	player->armorpoints++;		// can go over 100%
	if (player->armorpoints > 200)
	    player->armorpoints = 200;
	if (!player->armortype)
	    player->armortype = 1;
	player->message = GOTARMBONUS;
	break;
	
      case SPR_SOUL:
	player->health += 100;
	if (player->health > 200)
	    player->health = 200;
	player->mo->health = player->health;
	player->message = GOTSUPER;
	sound = sfx_getpow;
	break;
	
      case SPR_MEGA:
	if (gamemode != commercial)
	    return;
	player->health = 200;
	player->mo->health = player->health;
	FUNC2 (player,2);
	player->message = GOTMSPHERE;
	sound = sfx_getpow;
	break;
	
	// cards
	// leave cards for everyone
      case SPR_BKEY:
	if (!player->cards[it_bluecard])
	    player->message = GOTBLUECARD;
	FUNC4 (player, it_bluecard);
	if (!netgame)
	    break;
	return;
	
      case SPR_YKEY:
	if (!player->cards[it_yellowcard])
	    player->message = GOTYELWCARD;
	FUNC4 (player, it_yellowcard);
	if (!netgame)
	    break;
	return;
	
      case SPR_RKEY:
	if (!player->cards[it_redcard])
	    player->message = GOTREDCARD;
	FUNC4 (player, it_redcard);
	if (!netgame)
	    break;
	return;
	
      case SPR_BSKU:
	if (!player->cards[it_blueskull])
	    player->message = GOTBLUESKUL;
	FUNC4 (player, it_blueskull);
	if (!netgame)
	    break;
	return;
	
      case SPR_YSKU:
	if (!player->cards[it_yellowskull])
	    player->message = GOTYELWSKUL;
	FUNC4 (player, it_yellowskull);
	if (!netgame)
	    break;
	return;
	
      case SPR_RSKU:
	if (!player->cards[it_redskull])
	    player->message = GOTREDSKULL;
	FUNC4 (player, it_redskull);
	if (!netgame)
	    break;
	return;
	
	// medikits, heals
      case SPR_STIM:
	if (!FUNC3 (player, 10))
	    return;
	player->message = GOTSTIM;
	break;
	
      case SPR_MEDI:
	if (!FUNC3 (player, 25))
	    return;

	if (player->health < 25)
	    player->message = GOTMEDINEED;
	else
	    player->message = GOTMEDIKIT;
	break;

	
	// power ups
      case SPR_PINV:
	if (!FUNC5 (player, pw_invulnerability))
	    return;
	player->message = GOTINVUL;
	sound = sfx_getpow;
	break;
	
      case SPR_PSTR:
	if (!FUNC5 (player, pw_strength))
	    return;
	player->message = GOTBERSERK;
	if (player->readyweapon != wp_fist)
	    player->pendingweapon = wp_fist;
	sound = sfx_getpow;
	break;
	
      case SPR_PINS:
	if (!FUNC5 (player, pw_invisibility))
	    return;
	player->message = GOTINVIS;
	sound = sfx_getpow;
	break;
	
      case SPR_SUIT:
	if (!FUNC5 (player, pw_ironfeet))
	    return;
	player->message = GOTSUIT;
	sound = sfx_getpow;
	break;
	
      case SPR_PMAP:
	if (!FUNC5 (player, pw_allmap))
	    return;
	player->message = GOTMAP;
	sound = sfx_getpow;
	break;
	
      case SPR_PVIS:
	if (!FUNC5 (player, pw_infrared))
	    return;
	player->message = GOTVISOR;
	sound = sfx_getpow;
	break;
	
	// ammo
      case SPR_CLIP:
	if (special->flags & MF_DROPPED)
	{
	    if (!FUNC1 (player,am_clip,0))
		return;
	}
	else
	{
	    if (!FUNC1 (player,am_clip,1))
		return;
	}
	player->message = GOTCLIP;
	break;
	
      case SPR_AMMO:
	if (!FUNC1 (player, am_clip,5))
	    return;
	player->message = GOTCLIPBOX;
	break;
	
      case SPR_ROCK:
	if (!FUNC1 (player, am_misl,1))
	    return;
	player->message = GOTROCKET;
	break;
	
      case SPR_BROK:
	if (!FUNC1 (player, am_misl,5))
	    return;
	player->message = GOTROCKBOX;
	break;
	
      case SPR_CELL:
	if (!FUNC1 (player, am_cell,1))
	    return;
	player->message = GOTCELL;
	break;
	
      case SPR_CELP:
	if (!FUNC1 (player, am_cell,5))
	    return;
	player->message = GOTCELLBOX;
	break;
	
      case SPR_SHEL:
	if (!FUNC1 (player, am_shell,1))
	    return;
	player->message = GOTSHELLS;
	break;
	
      case SPR_SBOX:
	if (!FUNC1 (player, am_shell,5))
	    return;
	player->message = GOTSHELLBOX;
	break;
	
      case SPR_BPAK:
	if (!player->backpack)
	{
	    for (i=0 ; i<NUMAMMO ; i++)
		player->maxammo[i] *= 2;
	    player->backpack = true;
	}
	for (i=0 ; i<NUMAMMO ; i++)
	    FUNC1 (player, i, 1);
	player->message = GOTBACKPACK;
	break;
	
	// weapons
      case SPR_BFUG:
	if (!FUNC6 (player, wp_bfg, false) )
	    return;
	player->message = GOTBFG9000;
	sound = sfx_wpnup;	
	break;
	
      case SPR_MGUN:
	if (!FUNC6 (player, wp_chaingun, special->flags&MF_DROPPED) )
	    return;
	player->message = GOTCHAINGUN;
	sound = sfx_wpnup;	
	break;
	
      case SPR_CSAW:
	if (!FUNC6 (player, wp_chainsaw, false) )
	    return;
	player->message = GOTCHAINSAW;
	sound = sfx_wpnup;	
	break;
	
      case SPR_LAUN:
	if (!FUNC6 (player, wp_missile, false) )
	    return;
	player->message = GOTLAUNCHER;
	sound = sfx_wpnup;	
	break;
	
      case SPR_PLAS:
	if (!FUNC6 (player, wp_plasma, false) )
	    return;
	player->message = GOTPLASMA;
	sound = sfx_wpnup;	
	break;
	
      case SPR_SHOT:
	if (!FUNC6 (player, wp_shotgun, special->flags&MF_DROPPED ) )
	    return;
	player->message = GOTSHOTGUN;
	sound = sfx_wpnup;	
	break;
		
      case SPR_SGN2:
	if (!FUNC6 (player, wp_supershotgun, special->flags&MF_DROPPED ) )
	    return;
	player->message = GOTSHOTGUN2;
	sound = sfx_wpnup;	
	break;
		
      default:
	FUNC0 ("P_SpecialThing: Unknown gettable thing");
    }
	
    if (special->flags & MF_COUNTITEM)
	player->itemcount++;
    FUNC7 (special);
    player->bonuscount += BONUSADD;
    if (player == &players[consoleplayer])
	FUNC8 (NULL, sound);
}
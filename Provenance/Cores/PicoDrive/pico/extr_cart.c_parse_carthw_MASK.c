#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;
struct TYPE_4__ {int romsize; } ;
struct TYPE_3__ {int start; int end; int eeprom_type; int eeprom_bit_cl; int eeprom_bit_in; int eeprom_bit_out; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EL_STATUS ; 
 int /*<<< orphan*/  PQUIRK_FORCE_6BTN ; 
 TYPE_2__ Pico ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PicoQuirks ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SRF_EEPROM ; 
 int /*<<< orphan*/  SRF_ENABLED ; 
 TYPE_1__ SRam ; 
 char* builtin_carthw_cfg ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const*,char*) ; 
 int FUNC14 (char*,char**) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int*,int*,int*) ; 
 int FUNC17 () ; 
 int FUNC18 (int) ; 
 scalar_t__ FUNC19 (int,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 char* FUNC21 (char*) ; 
 char* FUNC22 (char*,char) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 void* FUNC24 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(const char *carthw_cfg, int *fill_sram)
{
  int line = 0, any_checks_passed = 0, skip_sect = 0;
  const char *s, *builtin = builtin_carthw_cfg;
  int tmp, rom_crc = 0;
  char buff[256], *p, *r;
  FILE *f;

  f = FUNC13(carthw_cfg, "r");
  if (f == NULL)
    f = FUNC13("pico/carthw.cfg", "r");
  if (f == NULL)
    FUNC10(EL_STATUS, "couldn't open carthw.cfg!");

  for (;;)
  {
    if (f != NULL) {
      p = FUNC12(buff, sizeof(buff), f);
      if (p == NULL)
        break;
    }
    else {
      if (*builtin == 0)
        break;
      for (s = builtin; *s != 0 && *s != '\n'; s++)
        ;
      while (*s == '\n')
        s++;
      tmp = s - builtin;
      if (tmp > sizeof(buff) - 1)
        tmp = sizeof(buff) - 1;
      FUNC15(buff, builtin, tmp);
      buff[tmp] = 0;
      p = buff;
      builtin = s;
    }

    line++;
    p = FUNC21(p);
    if (*p == 0 || *p == '#')
      continue;

    if (*p == '[') {
      any_checks_passed = 0;
      skip_sect = 0;
      continue;
    }
    
    if (skip_sect)
      continue;

    /* look for checks */
    if (FUNC14("check_str", &p))
    {
      int offs;
      offs = FUNC24(p, &r, 0);
      if (offs < 0 || offs > Pico.romsize) {
        FUNC10(EL_STATUS, "carthw:%d: check_str offs out of range: %d\n", line, offs);
	goto bad;
      }
      p = FUNC21(r);
      if (*p != ',')
        goto bad;
      p = FUNC21(p + 1);
      if (*p != '"')
        goto bad;
      p++;
      r = FUNC22(p, '"');
      if (r == NULL)
        goto bad;
      *r = 0;

      if (FUNC19(offs, p) == 0)
        any_checks_passed = 1;
      else
        skip_sect = 1;
      continue;
    }
    else if (FUNC14("check_size_gt", &p))
    {
      int size;
      size = FUNC24(p, &r, 0);
      if (r == p || size < 0)
        goto bad;

      if (Pico.romsize > size)
        any_checks_passed = 1;
      else
        skip_sect = 1;
      continue;
    }
    else if (FUNC14("check_csum", &p))
    {
      int csum;
      csum = FUNC24(p, &r, 0);
      if (r == p || (csum & 0xffff0000))
        goto bad;

      if (csum == (FUNC18(0x18c) & 0xffff))
        any_checks_passed = 1;
      else
        skip_sect = 1;
      continue;
    }
    else if (FUNC14("check_crc32", &p))
    {
      unsigned int crc;
      crc = FUNC24(p, &r, 0);
      if (r == p)
        goto bad;

      if (rom_crc == 0)
        rom_crc = FUNC17();
      if (crc == rom_crc)
        any_checks_passed = 1;
      else
        skip_sect = 1;
      continue;
    }

    /* now time for actions */
    if (FUNC14("hw", &p)) {
      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      if      (FUNC23(p, "svp") == 0)
        FUNC1();
      else if (FUNC23(p, "pico") == 0)
        FUNC0();
      else if (FUNC23(p, "prot") == 0)
        FUNC8();
      else if (FUNC23(p, "ssf2_mapper") == 0)
        FUNC9();
      else if (FUNC23(p, "x_in_1_mapper") == 0)
        FUNC2();
      else if (FUNC23(p, "realtec_mapper") == 0)
        FUNC6();
      else if (FUNC23(p, "radica_mapper") == 0)
        FUNC5();
      else if (FUNC23(p, "piersolar_mapper") == 0)
        FUNC3();
      else if (FUNC23(p, "prot_lk3") == 0)
        FUNC4();
      else {
        FUNC10(EL_STATUS, "carthw:%d: unsupported mapper: %s", line, p);
        skip_sect = 1;
      }
      continue;
    }
    if (FUNC14("sram_range", &p)) {
      int start, end;

      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      start = FUNC24(p, &r, 0);
      if (r == p)
        goto bad;
      p = FUNC21(r);
      if (*p != ',')
        goto bad;
      p = FUNC21(p + 1);
      end = FUNC24(p, &r, 0);
      if (r == p)
        goto bad;
      if (((start | end) & 0xff000000) || start > end) {
        FUNC10(EL_STATUS, "carthw:%d: bad sram_range: %08x - %08x", line, start, end);
        goto bad_nomsg;
      }
      SRam.start = start;
      SRam.end = end;
      continue;
    }
    else if (FUNC14("prop", &p)) {
      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      if      (FUNC23(p, "no_sram") == 0)
        SRam.flags &= ~SRF_ENABLED;
      else if (FUNC23(p, "no_eeprom") == 0)
        SRam.flags &= ~SRF_EEPROM;
      else if (FUNC23(p, "filled_sram") == 0)
        *fill_sram = 1;
      else if (FUNC23(p, "force_6btn") == 0)
        PicoQuirks |= PQUIRK_FORCE_6BTN;
      else {
        FUNC10(EL_STATUS, "carthw:%d: unsupported prop: %s", line, p);
        goto bad_nomsg;
      }
      FUNC10(EL_STATUS, "game prop: %s", p);
      continue;
    }
    else if (FUNC14("eeprom_type", &p)) {
      int type;
      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      type = FUNC24(p, &r, 0);
      if (r == p || type < 0)
        goto bad;
      SRam.eeprom_type = type;
      SRam.flags |= SRF_EEPROM;
      continue;
    }
    else if (FUNC14("eeprom_lines", &p)) {
      int scl, sda_in, sda_out;
      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      if (!FUNC16(p, &scl, &sda_in, &sda_out))
        goto bad;
      if (scl < 0 || scl > 15 || sda_in < 0 || sda_in > 15 ||
          sda_out < 0 || sda_out > 15)
        goto bad;

      SRam.eeprom_bit_cl = scl;
      SRam.eeprom_bit_in = sda_in;
      SRam.eeprom_bit_out= sda_out;
      continue;
    }
    else if ((tmp = FUNC14("prot_ro_value16", &p)) || FUNC14("prot_rw_value16", &p)) {
      int addr, mask, val;
      if (!any_checks_passed)
        goto no_checks;
      FUNC20(p);

      if (!FUNC16(p, &addr, &mask, &val))
        goto bad;

      FUNC7(addr, mask, val, tmp ? 1 : 0);
      continue;
    }


bad:
    FUNC10(EL_STATUS, "carthw:%d: unrecognized expression: %s", line, buff);
bad_nomsg:
    skip_sect = 1;
    continue;

no_checks:
    FUNC10(EL_STATUS, "carthw:%d: command without any checks before it: %s", line, buff);
    skip_sect = 1;
    continue;
  }

  if (f != NULL)
    FUNC11(f);
}
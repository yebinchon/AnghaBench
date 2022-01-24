#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  len; scalar_t__ buff; } ;
struct TYPE_11__ {char* buff; } ;
struct TYPE_10__ {unsigned int len; TYPE_2__* items; } ;
struct TYPE_12__ {TYPE_1__ binary; scalar_t__ uint_; TYPE_4__ string; TYPE_3__ map; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_5__ val; } ;
typedef  int /*<<< orphan*/  libretrodb_cursor_t ;
struct TYPE_13__ {int analog_supported; int rumble_supported; int coop_supported; unsigned int edge_magazine_rating; unsigned int edge_magazine_issue; unsigned int famitsu_magazine_rating; unsigned int tgdb_rating; unsigned int max_users; unsigned int releasemonth; unsigned int releaseyear; unsigned int size; void* md5; void* sha1; int /*<<< orphan*/  crc32; void* edge_magazine_review; void* enhancement_hw; void* pegi_rating; void* cero_rating; void* elspa_rating; void* esrb_rating; void* bbfc_rating; void* franchise; void* origin; void* genre; void* description; void* name; void* rom_name; void* serial; int /*<<< orphan*/  developer; void* publisher; } ;
typedef  TYPE_6__ database_info_t ;
struct TYPE_9__ {struct rmsgpack_dom_value value; struct rmsgpack_dom_value key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ RDT_MAP ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct rmsgpack_dom_value*) ; 
 int /*<<< orphan*/  FUNC3 (struct rmsgpack_dom_value*) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(libretrodb_cursor_t *cur,
      database_info_t *db_info)
{
   unsigned i;
   struct rmsgpack_dom_value item;
   const char* str                = NULL;

   if (FUNC2(cur, &item) != 0)
      return -1;

   if (item.type != RDT_MAP)
   {
      FUNC3(&item);
      return 1;
   }

   db_info->analog_supported       = -1;
   db_info->rumble_supported       = -1;
   db_info->coop_supported         = -1;

   for (i = 0; i < item.val.map.len; i++)
   {
      struct rmsgpack_dom_value *key = &item.val.map.items[i].key;
      struct rmsgpack_dom_value *val = &item.val.map.items[i].value;
      const char *val_string         = NULL;

      if (!key || !val)
         continue;

      val_string                     = val->val.string.buff;
      str                            = key->val.string.buff;

      if (FUNC6(str, "publisher"))
      {
         if (!FUNC5(val_string))
            db_info->publisher = FUNC4(val_string);
      }
      else if (FUNC6(str, "developer"))
      {
         if (!FUNC5(val_string))
            db_info->developer = FUNC7(val_string, "|");
      }
      else if (FUNC6(str, "serial"))
      {
         if (!FUNC5(val_string))
            db_info->serial = FUNC4(val_string);
      }
      else if (FUNC6(str, "rom_name"))
      {
         if (!FUNC5(val_string))
            db_info->rom_name = FUNC4(val_string);
      }
      else if (FUNC6(str, "name"))
      {
         if (!FUNC5(val_string))
            db_info->name = FUNC4(val_string);
      }
      else if (FUNC6(str, "description"))
      {
         if (!FUNC5(val_string))
            db_info->description = FUNC4(val_string);
      }
      else if (FUNC6(str, "genre"))
      {
         if (!FUNC5(val_string))
            db_info->genre = FUNC4(val_string);
      }
      else if (FUNC6(str, "origin"))
      {
         if (!FUNC5(val_string))
            db_info->origin = FUNC4(val_string);
      }
      else if (FUNC6(str, "franchise"))
      {
         if (!FUNC5(val_string))
            db_info->franchise = FUNC4(val_string);
      }
      else if (FUNC6(str, "bbfc_rating"))
      {
         if (!FUNC5(val_string))
            db_info->bbfc_rating = FUNC4(val_string);
      }
      else if (FUNC6(str, "esrb_rating"))
      {
         if (!FUNC5(val_string))
            db_info->esrb_rating = FUNC4(val_string);
      }
      else if (FUNC6(str, "elspa_rating"))
      {
         if (!FUNC5(val_string))
            db_info->elspa_rating = FUNC4(val_string);
      }
      else if (FUNC6(str, "cero_rating"))
      {
         if (!FUNC5(val_string))
            db_info->cero_rating          = FUNC4(val_string);
      }
      else if (FUNC6(str, "pegi_rating"))
      {
         if (!FUNC5(val_string))
            db_info->pegi_rating          = FUNC4(val_string);
      }
      else if (FUNC6(str, "enhancement_hw"))
      {
         if (!FUNC5(val_string))
            db_info->enhancement_hw       = FUNC4(val_string);
      }
      else if (FUNC6(str, "edge_review"))
      {
         if (!FUNC5(val_string))
            db_info->edge_magazine_review = FUNC4(val_string);
      }
      else if (FUNC6(str, "edge_rating"))
         db_info->edge_magazine_rating    = (unsigned)val->val.uint_;
      else if (FUNC6(str, "edge_issue"))
         db_info->edge_magazine_issue     = (unsigned)val->val.uint_;
      else if (FUNC6(str, "famitsu_rating"))
         db_info->famitsu_magazine_rating = (unsigned)val->val.uint_;
      else if (FUNC6(str, "tgdb_rating"))
         db_info->tgdb_rating             = (unsigned)val->val.uint_;
      else if (FUNC6(str, "users"))
         db_info->max_users               = (unsigned)val->val.uint_;
      else if (FUNC6(str, "releasemonth"))
         db_info->releasemonth            = (unsigned)val->val.uint_;
      else if (FUNC6(str, "releaseyear"))
         db_info->releaseyear             = (unsigned)val->val.uint_;
      else if (FUNC6(str, "rumble"))
         db_info->rumble_supported        = (int)val->val.uint_;
      else if (FUNC6(str, "coop"))
         db_info->coop_supported          = (int)val->val.uint_;
      else if (FUNC6(str, "analog"))
         db_info->analog_supported        = (int)val->val.uint_;
      else if (FUNC6(str, "size"))
         db_info->size                    = (unsigned)val->val.uint_;
      else if (FUNC6(str, "crc"))
         db_info->crc32 = FUNC8(
               *(uint32_t*)val->val.binary.buff);
      else if (FUNC6(str, "sha1"))
         db_info->sha1 = FUNC1(
               (uint8_t*)val->val.binary.buff, val->val.binary.len);
      else if (FUNC6(str, "md5"))
         db_info->md5 = FUNC1(
               (uint8_t*)val->val.binary.buff, val->val.binary.len);
      else
      {
         FUNC0("Unknown key: %s\n", str);
      }
   }

   FUNC3(&item);

   return 0;
}
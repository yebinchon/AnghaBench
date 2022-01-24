#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_22__ {scalar_t__ enum_idx; int /*<<< orphan*/  action_sublabel_ident; int /*<<< orphan*/  action_label_ident; int /*<<< orphan*/  action_get_title_ident; int /*<<< orphan*/  action_get_value_ident; int /*<<< orphan*/  action_refresh_ident; int /*<<< orphan*/  action_deferred_push_ident; int /*<<< orphan*/  action_right_ident; int /*<<< orphan*/  action_left_ident; int /*<<< orphan*/  action_down_ident; int /*<<< orphan*/  action_up_ident; int /*<<< orphan*/  action_content_list_switch_ident; int /*<<< orphan*/  action_info_ident; int /*<<< orphan*/  action_select_ident; int /*<<< orphan*/  action_start_ident; int /*<<< orphan*/  action_scan_ident; int /*<<< orphan*/  action_cancel_ident; int /*<<< orphan*/  action_ok_ident; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;
struct TYPE_23__ {char const* path; char const* label; unsigned int type; size_t idx; int /*<<< orphan*/  label_hash; TYPE_1__* cbs; } ;
typedef  TYPE_2__ menu_ctx_bind_t ;
typedef  int /*<<< orphan*/  file_list_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;

/* Variables and functions */
 scalar_t__ MSG_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_BIND_INIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,char const*,unsigned int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,char const*,unsigned int,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*,char const*,unsigned int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,char const*,unsigned int,size_t,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char const*,char const*,unsigned int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char const*,char const*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC18 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 

void FUNC24(void *data,
      menu_file_list_cbs_t *cbs,
      const char *path, const char *label,
      unsigned type, size_t idx)
{
   menu_ctx_bind_t bind_info;
   const char *repr_label        = NULL;
   const char *menu_label        = NULL;
   uint32_t label_hash           = 0;
   uint32_t menu_label_hash      = 0;
   enum msg_hash_enums enum_idx  = MSG_UNKNOWN;
   file_list_t *list             = (file_list_t*)data;
   if (!list)
      return;

   FUNC20(NULL, &menu_label, NULL, &enum_idx, NULL);

   if (!label || !menu_label)
      return;

   label_hash      = FUNC21(label);
   menu_label_hash = FUNC21(menu_label);

#ifdef DEBUG_LOG
   RARCH_LOG("\n");
#endif

   repr_label = (!FUNC23(label)) ? label : path;

#ifdef DEBUG_LOG
   if (cbs && cbs->enum_idx != MSG_UNKNOWN)
      RARCH_LOG("\t\t\tenum_idx %d [%s]\n", cbs->enum_idx, msg_hash_to_str(cbs->enum_idx));
#endif

   /* It will try to find a corresponding callback function inside
    * menu_cbs_ok.c, then map this callback to the entry. */
   FUNC9(cbs, path, label, type, idx, label_hash, menu_label_hash);

   FUNC18(repr_label, "OK", cbs->action_ok_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_cancel.c, then map this callback to the entry. */
   FUNC1(cbs, path, label, type, idx);

   FUNC18(repr_label, "CANCEL", cbs->action_cancel_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_scan.c, then map this callback to the entry. */
   FUNC12(cbs, path, label, type, idx);

   FUNC18(repr_label, "SCAN", cbs->action_scan_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_start.c, then map this callback to the entry. */
   FUNC14(cbs, path, label, type, idx);

   FUNC18(repr_label, "START", cbs->action_start_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_select.c, then map this callback to the entry. */
   FUNC13(cbs, path, label, type, idx);

   FUNC18(repr_label, "SELECT", cbs->action_select_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_info.c, then map this callback to the entry. */
   FUNC6(cbs, path, label, type, idx);

   FUNC18(repr_label, "INFO", cbs->action_info_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_bind_content_list_switch.c, then map this callback to the entry. */
   FUNC2(cbs, path, label, type, idx);

   FUNC18(repr_label, "CONTENT SWITCH", cbs->action_content_list_switch_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_up.c, then map this callback to the entry. */
   FUNC17(cbs, path, label, type, idx);

   FUNC18(repr_label, "UP", cbs->action_up_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_down.c, then map this callback to the entry. */
   FUNC4(cbs, path, label, type, idx);

   FUNC18(repr_label, "DOWN", cbs->action_down_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_left.c, then map this callback to the entry. */
   FUNC8(cbs, path, label, type, idx, menu_label, label_hash);

   FUNC18(repr_label, "LEFT", cbs->action_left_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_right.c, then map this callback to the entry. */
   FUNC11(cbs, path, label, type, idx, menu_label, label_hash);

   FUNC18(repr_label, "RIGHT", cbs->action_right_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_deferred_push.c, then map this callback to the entry. */
   FUNC3(cbs, path, label, type, idx, label_hash);

   FUNC18(repr_label, "DEFERRED PUSH", cbs->action_deferred_push_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_refresh.c, then map this callback to the entry. */
   FUNC10(cbs, path, label, type, idx);

   FUNC18(repr_label, "REFRESH", cbs->action_refresh_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_get_string_representation.c, then map this callback to the entry. */
   FUNC5(cbs, path, label, type, idx);

   FUNC18(repr_label, "GET VALUE", cbs->action_get_value_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_title.c, then map this callback to the entry. */
   FUNC16(cbs, path, label, type, idx, label_hash);

   FUNC18(repr_label, "GET TITLE", cbs->action_get_title_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_label.c, then map this callback to the entry. */
   FUNC7(cbs, path, label, type, idx);

   FUNC18(repr_label, "LABEL", cbs->action_label_ident);

   /* It will try to find a corresponding callback function inside
    * menu_cbs_sublabel.c, then map this callback to the entry. */
   FUNC15(cbs, path, label, type, idx);

   FUNC18(repr_label, "SUBLABEL", cbs->action_sublabel_ident);

   bind_info.cbs             = cbs;
   bind_info.path            = path;
   bind_info.label           = label;
   bind_info.type            = type;
   bind_info.idx             = idx;
   bind_info.label_hash      = label_hash;

   FUNC19(RARCH_MENU_CTL_BIND_INIT, &bind_info);
}
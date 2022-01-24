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
typedef  int /*<<< orphan*/  u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct pf_rule {int /*<<< orphan*/  proto; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  op; int /*<<< orphan*/ * gid; } ;
struct TYPE_3__ {int /*<<< orphan*/  op; int /*<<< orphan*/ * uid; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_rule*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_rule*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action ; 
 int /*<<< orphan*/  af ; 
 int /*<<< orphan*/  allow_opts ; 
 int /*<<< orphan*/  code ; 
 int /*<<< orphan*/  direction ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  flagset ; 
 TYPE_2__ gid ; 
 int /*<<< orphan*/  ifname ; 
 int /*<<< orphan*/  ifnot ; 
 int /*<<< orphan*/  keep_state ; 
 int /*<<< orphan*/  label ; 
 int /*<<< orphan*/  match_tag ; 
 int /*<<< orphan*/  match_tag_not ; 
 int /*<<< orphan*/  match_tagname ; 
 int /*<<< orphan*/  natpass ; 
 int /*<<< orphan*/  os_fingerprint ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prob ; 
 int /*<<< orphan*/  proto ; 
 int /*<<< orphan*/  quick ; 
 int /*<<< orphan*/  rt ; 
 int /*<<< orphan*/  rule_flag ; 
 int /*<<< orphan*/  tos ; 
 int /*<<< orphan*/  type ; 
 TYPE_1__ uid ; 

__attribute__((used)) static void
FUNC5(MD5_CTX *ctx, struct pf_rule *rule)
{
	u_int16_t x;
	u_int32_t y;

	FUNC4(ctx, &rule->src, rule->proto);
	FUNC4(ctx, &rule->dst, rule->proto);
	FUNC3(rule, label);
	FUNC3(rule, ifname);
	FUNC3(rule, match_tagname);
	FUNC2(rule, match_tag, x); /* dup? */
	FUNC1(rule, os_fingerprint, y);
	FUNC1(rule, prob, y);
	FUNC1(rule, uid.uid[0], y);
	FUNC1(rule, uid.uid[1], y);
	FUNC0(rule, uid.op);
	FUNC1(rule, gid.gid[0], y);
	FUNC1(rule, gid.gid[1], y);
	FUNC0(rule, gid.op);
	FUNC1(rule, rule_flag, y);
	FUNC0(rule, action);
	FUNC0(rule, direction);
	FUNC0(rule, af);
	FUNC0(rule, quick);
	FUNC0(rule, ifnot);
	FUNC0(rule, match_tag_not);
	FUNC0(rule, natpass);
	FUNC0(rule, keep_state);
	FUNC0(rule, proto);
	FUNC0(rule, type);
	FUNC0(rule, code);
	FUNC0(rule, flags);
	FUNC0(rule, flagset);
	FUNC0(rule, allow_opts);
	FUNC0(rule, rt);
	FUNC0(rule, tos);
}
; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_uuid_policy.c_proc_uuid_policy_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_uuid_policy.c_proc_uuid_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_uuid_policy_subsys_lck_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"proc_uuid_policy_subsys_lock\00", align 1
@proc_uuid_policy_subsys_lck_grp = common dso_local global i32 0, align 4
@proc_uuid_policy_subsys_lck_attr = common dso_local global i32 0, align 4
@proc_uuid_policy_subsys_mutex = common dso_local global i32 0, align 4
@PROC_UUID_POLICY_HASH_SIZE = common dso_local global i32 0, align 4
@M_PROC_UUID_POLICY = common dso_local global i32 0, align 4
@proc_uuid_policy_hash_mask = common dso_local global i32 0, align 4
@proc_uuid_policy_hashtbl = common dso_local global i32 0, align 4
@proc_uuid_policy_table_gencount = common dso_local global i32 0, align 4
@proc_uuid_policy_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_uuid_policy_init() #0 {
  %1 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %1, i32* @proc_uuid_policy_subsys_lck_grp_attr, align 4
  %2 = load i32, i32* @proc_uuid_policy_subsys_lck_grp_attr, align 4
  %3 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @proc_uuid_policy_subsys_lck_grp, align 4
  %4 = call i32 (...) @lck_attr_alloc_init()
  store i32 %4, i32* @proc_uuid_policy_subsys_lck_attr, align 4
  %5 = load i32, i32* @proc_uuid_policy_subsys_lck_grp, align 4
  %6 = load i32, i32* @proc_uuid_policy_subsys_lck_attr, align 4
  %7 = call i32 @lck_mtx_init(i32* @proc_uuid_policy_subsys_mutex, i32 %5, i32 %6)
  %8 = load i32, i32* @PROC_UUID_POLICY_HASH_SIZE, align 4
  %9 = load i32, i32* @M_PROC_UUID_POLICY, align 4
  %10 = call i32 @hashinit(i32 %8, i32 %9, i32* @proc_uuid_policy_hash_mask)
  store i32 %10, i32* @proc_uuid_policy_hashtbl, align 4
  store i32 1, i32* @proc_uuid_policy_table_gencount, align 4
  store i64 0, i64* @proc_uuid_policy_count, align 8
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

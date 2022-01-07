; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_subr_eventhandler.c_eventhandler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eventhandler_mutex_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"eventhandler\00", align 1
@eventhandler_mutex_grp = common dso_local global i8* null, align 8
@eventhandler_mutex_attr = common dso_local global i8* null, align 8
@el_lock_grp_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"eventhandler list\00", align 1
@el_lock_grp = common dso_local global i8* null, align 8
@el_lock_attr = common dso_local global i8* null, align 8
@evthdlr_lists_ctxt_glb = common dso_local global i32 0, align 4
@eg_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"eventhdlr_generic\00", align 1
@MCR_SLEEP = common dso_local global i32 0, align 4
@eg_cache = common dso_local global i8* null, align 8
@el_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"eventhdlr_list\00", align 1
@el_cache = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eventhandler_init() #0 {
  %1 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %1, i32* @eventhandler_mutex_grp_attr, align 4
  %2 = load i32, i32* @eventhandler_mutex_grp_attr, align 4
  %3 = call i8* @lck_grp_alloc_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i8* %3, i8** @eventhandler_mutex_grp, align 8
  %4 = call i8* (...) @lck_attr_alloc_init()
  store i8* %4, i8** @eventhandler_mutex_attr, align 8
  %5 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %5, i32* @el_lock_grp_attr, align 4
  %6 = load i32, i32* @el_lock_grp_attr, align 4
  %7 = call i8* @lck_grp_alloc_init(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  store i8* %7, i8** @el_lock_grp, align 8
  %8 = call i8* (...) @lck_attr_alloc_init()
  store i8* %8, i8** @el_lock_attr, align 8
  %9 = call i32 @eventhandler_lists_ctxt_init(i32* @evthdlr_lists_ctxt_glb)
  store i32 4, i32* @eg_size, align 4
  %10 = load i32, i32* @eg_size, align 4
  %11 = load i32, i32* @MCR_SLEEP, align 4
  %12 = call i8* @mcache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 4, i32 0, i32 %11)
  store i8* %12, i8** @eg_cache, align 8
  store i32 4, i32* @el_size, align 4
  %13 = load i32, i32* @el_size, align 4
  %14 = load i32, i32* @MCR_SLEEP, align 4
  %15 = call i8* @mcache_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 4, i32 0, i32 %14)
  store i8* %15, i8** @el_cache, align 8
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i8* @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i8* @lck_attr_alloc_init(...) #1

declare dso_local i32 @eventhandler_lists_ctxt_init(i32*) #1

declare dso_local i8* @mcache_create(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

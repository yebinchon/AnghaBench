; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_lock_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kdbg_lock_init.kdebug_lck_grp_attr = internal global i32* null, align 8
@kdbg_lock_init.kdebug_lck_grp = internal global i32* null, align 8
@kdbg_lock_init.kdebug_lck_attr = internal global i32* null, align 8
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_LOCKINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kdebug\00", align 1
@kds_spin_lock = common dso_local global i8* null, align 8
@kdw_spin_lock = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kdbg_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_lock_init() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %2 = load i32, i32* @KDBG_LOCKINIT, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %24

6:                                                ; preds = %0
  %7 = load i32*, i32** @kdbg_lock_init.kdebug_lck_grp_attr, align 8
  %8 = icmp eq i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = call i32* (...) @lck_grp_attr_alloc_init()
  store i32* %11, i32** @kdbg_lock_init.kdebug_lck_grp_attr, align 8
  %12 = load i32*, i32** @kdbg_lock_init.kdebug_lck_grp_attr, align 8
  %13 = call i32* @lck_grp_alloc_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32* %13, i32** @kdbg_lock_init.kdebug_lck_grp, align 8
  %14 = call i32* (...) @lck_attr_alloc_init()
  store i32* %14, i32** @kdbg_lock_init.kdebug_lck_attr, align 8
  %15 = load i32*, i32** @kdbg_lock_init.kdebug_lck_grp, align 8
  %16 = load i32*, i32** @kdbg_lock_init.kdebug_lck_attr, align 8
  %17 = call i8* @lck_spin_alloc_init(i32* %15, i32* %16)
  store i8* %17, i8** @kds_spin_lock, align 8
  %18 = load i32*, i32** @kdbg_lock_init.kdebug_lck_grp, align 8
  %19 = load i32*, i32** @kdbg_lock_init.kdebug_lck_attr, align 8
  %20 = call i8* @lck_spin_alloc_init(i32* %18, i32* %19)
  store i8* %20, i8** @kdw_spin_lock, align 8
  %21 = load i32, i32* @KDBG_LOCKINIT, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @lck_grp_attr_alloc_init(...) #1

declare dso_local i32* @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32* @lck_attr_alloc_init(...) #1

declare dso_local i8* @lck_spin_alloc_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

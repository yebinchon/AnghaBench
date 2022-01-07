; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_reason.c_os_reason_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_reason.c_os_reason_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@os_reason_lock_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"os_reason_lock\00", align 1
@os_reason_lock_grp = common dso_local global i32 0, align 4
@os_reason_lock_attr = common dso_local global i32 0, align 4
@OS_REASON_MAX_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"os reasons\00", align 1
@os_reason_zone = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to initialize os_reason_zone\00", align 1
@OS_REASON_RESERVE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_reason_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %2, i32* @os_reason_lock_grp_attr, align 4
  %3 = load i32, i32* @os_reason_lock_grp_attr, align 4
  %4 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* @os_reason_lock_grp, align 4
  %5 = call i32 (...) @lck_attr_alloc_init()
  store i32 %5, i32* @os_reason_lock_attr, align 4
  %6 = load i32, i32* @OS_REASON_MAX_COUNT, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @OS_REASON_MAX_COUNT, align 4
  %11 = call i32* @zinit(i32 4, i32 %9, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** @os_reason_zone, align 8
  %12 = load i32*, i32** @os_reason_zone, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32*, i32** @os_reason_zone, align 8
  %18 = load i32, i32* @OS_REASON_RESERVE_COUNT, align 4
  %19 = call i32 @zfill(i32* %17, i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @zfill(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

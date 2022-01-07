; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_try_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCK_RW_TYPE_SHARED = common dso_local global i64 0, align 8
@LCK_RW_TYPE_EXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"lck_rw_try_lock(): Invalid rw lock type: %x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lck_rw_try_lock(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LCK_RW_TYPE_SHARED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lck_rw_try_lock_shared(i32* %10)
  store i32 %11, i32* %3, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @LCK_RW_TYPE_EXCLUSIVE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @lck_rw_try_lock_exclusive(i32* %17)
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %16, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @lck_rw_try_lock_shared(i32*) #1

declare dso_local i32 @lck_rw_try_lock_exclusive(i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_force_all_ctrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_force_all_ctrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@force_all_ctrs = common dso_local global i64 0, align 8
@kpc_calling_pm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_force_all_ctrs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @TRUE, align 8
  br label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @FALSE, align 8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  store i64 %15, i64* %6, align 8
  %16 = call i64 (...) @kpc_get_force_all_ctrs()
  store i64 %16, i64* %7, align 8
  %17 = call i64 (...) @kpc_get_force_all_ctrs()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @kpc_task_get_forced_all_ctrs(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EACCES, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %19, %14
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %51

30:                                               ; preds = %25
  br i1 true, label %31, label %41

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @FALSE, align 8
  br label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @TRUE, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = call i32 @kpc_pm_handler(i64 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i64, i64* @force_all_ctrs, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* @force_all_ctrs, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %4, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @kpc_task_set_forced_all_ctrs(i32 %48, i64 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %29, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @kpc_get_force_all_ctrs(...) #1

declare dso_local i32 @kpc_task_get_forced_all_ctrs(i32) #1

declare dso_local i32 @kpc_pm_handler(i64) #1

declare dso_local i32 @kpc_task_set_forced_all_ctrs(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

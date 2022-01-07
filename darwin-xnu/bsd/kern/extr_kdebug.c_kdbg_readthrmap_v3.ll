; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_readthrmap_v3.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_readthrmap_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_MAPINIT = common dso_local global i32 0, align 4
@kd_mapcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdbg_readthrmap_v3(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @ktrace_assert_lock_held()
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %20, %17
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %27 = load i32, i32* @KDBG_MAPINIT, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @kd_mapcount, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @kdbg_write_v3_header(i64 %39, i64* %6, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (...) @kdbg_clear_thread_map()
  br label %46

46:                                               ; preds = %44, %38
  br label %49

47:                                               ; preds = %34, %25
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @kdbg_write_v3_header(i64, i64*, i32) #1

declare dso_local i32 @kdbg_clear_thread_map(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

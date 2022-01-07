; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_AllocWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_polylib.c_AllocWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numthreads = common dso_local global i32 0, align 4
@c_winding_allocs = common dso_local global i32 0, align 4
@c_winding_points = common dso_local global i32 0, align 4
@c_active_windings = common dso_local global i64 0, align 8
@c_peak_windings = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllocWinding(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @numthreads, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @c_winding_allocs, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @c_winding_allocs, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @c_winding_points, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* @c_winding_points, align 4
  %13 = load i64, i64* @c_active_windings, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* @c_active_windings, align 8
  %15 = load i64, i64* @c_active_windings, align 8
  %16 = load i64, i64* @c_peak_windings, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = load i64, i64* @c_active_windings, align 8
  store i64 %19, i64* @c_peak_windings, align 8
  br label %20

20:                                               ; preds = %18, %7
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 12, %23
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32* @malloc(i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @memset(i32* %29, i32 0, i32 %30)
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

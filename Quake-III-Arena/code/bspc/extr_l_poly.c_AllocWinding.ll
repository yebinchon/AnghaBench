; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_AllocWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_poly.c_AllocWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numthreads = common dso_local global i32 0, align 4
@c_winding_allocs = common dso_local global i32 0, align 4
@c_winding_points = common dso_local global i32 0, align 4
@c_active_windings = common dso_local global i64 0, align 8
@c_peak_windings = common dso_local global i64 0, align 8
@c_windingmemory = common dso_local global i64 0, align 8
@c_peak_windingmemory = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllocWinding(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 12, %6
  %8 = add i64 %7, 4
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @GetMemory(i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @memset(i32* %12, i32 0, i32 %13)
  %15 = load i32, i32* @numthreads, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @c_winding_allocs, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @c_winding_allocs, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @c_winding_points, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @c_winding_points, align 4
  %23 = load i64, i64* @c_active_windings, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @c_active_windings, align 8
  %25 = load i64, i64* @c_active_windings, align 8
  %26 = load i64, i64* @c_peak_windings, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* @c_active_windings, align 8
  store i64 %29, i64* @c_peak_windings, align 8
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @MemorySize(i32* %31)
  %33 = load i64, i64* @c_windingmemory, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* @c_windingmemory, align 8
  %35 = load i64, i64* @c_windingmemory, align 8
  %36 = load i64, i64* @c_peak_windingmemory, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @c_windingmemory, align 8
  store i64 %39, i64* @c_peak_windingmemory, align 8
  br label %40

40:                                               ; preds = %38, %30
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32* @GetMemory(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @MemorySize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

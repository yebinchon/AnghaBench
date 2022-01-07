; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_AllocWinding.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_polylib.c_AllocWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  %5 = load i32, i32* @c_winding_allocs, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @c_winding_allocs, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @c_winding_points, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* @c_winding_points, align 4
  %10 = load i64, i64* @c_active_windings, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @c_active_windings, align 8
  %12 = load i64, i64* @c_active_windings, align 8
  %13 = load i64, i64* @c_peak_windings, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @c_active_windings, align 8
  store i64 %16, i64* @c_peak_windings, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 12, %19
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32* @Z_Malloc(i32 %23)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @Com_Memset(i32* %25, i32 0, i32 %26)
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32* @Z_Malloc(i32) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

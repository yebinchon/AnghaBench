; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d10_common.c_d3d10_get_closest_match.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_d3d10_common.c_d3d10_get_closest_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DXGI_FORMAT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @d3d10_get_closest_match(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 1
  %13 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64* @dxgi_get_format_fallback_list(i64 %14)
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64* %19, i64** %8, align 8
  br label %20

20:                                               ; preds = %18, %3
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DXGI_FORMAT_UNKNOWN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = load i64*, i64** %8, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @D3D10CheckFormatSupport(i32 %27, i64 %29, i32* %9)
  %31 = call i64 @SUCCEEDED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %43

40:                                               ; preds = %33, %26
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %8, align 8
  br label %21

43:                                               ; preds = %39, %21
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @assert(i64 %45)
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  ret i64 %48
}

declare dso_local i64* @dxgi_get_format_fallback_list(i64) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @D3D10CheckFormatSupport(i32, i64, i32*) #1

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

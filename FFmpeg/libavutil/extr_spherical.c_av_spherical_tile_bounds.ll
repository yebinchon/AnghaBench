; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_spherical.c_av_spherical_tile_bounds.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_spherical.c_av_spherical_tile_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_spherical_tile_bounds(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @UINT32_MAX, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @UINT32_MAX, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = sdiv i32 %20, %29
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @UINT32_MAX, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @UINT32_MAX, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = sdiv i32 %34, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* @UINT32_MAX, align 4
  %51 = add nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* @UINT32_MAX, align 4
  %54 = sdiv i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %11, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* @UINT32_MAX, align 4
  %63 = add nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* @UINT32_MAX, align 4
  %66 = sdiv i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load i64*, i64** %12, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %70, %71
  %73 = load i64*, i64** %11, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %72, %74
  %76 = load i64*, i64** %13, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %78, %79
  %81 = load i64*, i64** %12, align 8
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %80, %82
  %84 = load i64*, i64** %14, align 8
  store i64 %83, i64* %84, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

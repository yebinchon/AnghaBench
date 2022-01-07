; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_ReadGPMetric.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_ReadGPMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@_cpReg = common dso_local global i32* null, align 8
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_PERF0_CLIP_RATIO = common dso_local global i64 0, align 8
@GX_PERF0_VERTICES = common dso_local global i64 0, align 8
@GX_PERF0_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_ReadGPMetric(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** @_cpReg, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 33
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @_SHIFTL(i32 %10, i32 16, i32 16)
  %12 = load i32*, i32** @_cpReg, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 32
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 65535
  %16 = or i32 %11, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** @_cpReg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 35
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_SHIFTL(i32 %19, i32 16, i32 16)
  %21 = load i32*, i32** @_cpReg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 34
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 65535
  %25 = or i32 %20, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %3, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GX_PERF0_CLIP_RATIO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 1000
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %35, %36
  %38 = load i32*, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  br label %55

39:                                               ; preds = %2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GX_PERF0_VERTICES, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @GX_PERF0_NONE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %3, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %45, %39
  br label %55

55:                                               ; preds = %54, %32
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

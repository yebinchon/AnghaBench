; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_InsideFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q2.c_InsideFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@dsurfedges = common dso_local global i32* null, align 8
@dvertexes = common dso_local global %struct.TYPE_9__* null, align 8
@dedges = common dso_local global %struct.TYPE_10__* null, align 8
@dplanes = common dso_local global %struct.TYPE_7__* null, align 8
@WCONVEX_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InsideFace(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %94, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %97

21:                                               ; preds = %15
  %22 = load i32*, i32** @dsurfedges, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dvertexes, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dedges, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @abs(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dvertexes, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dedges, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @abs(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %54, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @VectorSubtract(i32* %65, i32* %66, i32* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dplanes, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %72
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %14, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @CrossProduct(i32 %76, i32* %77, i32* %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @VectorNormalize(i32* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call float @DotProduct(i32* %82, i32* %83)
  store float %84, float* %9, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call float @DotProduct(i32* %85, i32* %86)
  %88 = load float, float* %9, align 4
  %89 = fsub float %87, %88
  %90 = load float, float* @WCONVEX_EPSILON, align 4
  %91 = fcmp ogt float %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %98

93:                                               ; preds = %21
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %15

97:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @CrossProduct(i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

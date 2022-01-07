; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q1.c_Q1_FacePlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q1.c_Q1_FacePlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_5__ = type { i64 }

@q1_dsurfedges = common dso_local global i32* null, align 8
@q1_dvertexes = common dso_local global %struct.TYPE_6__* null, align 8
@q1_dedges = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_FacePlane(%struct.TYPE_5__* %0, i32 %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %14 = load i32*, i32** @q1_dsurfedges, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @q1_dvertexes, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q1_dedges, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @abs(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %7, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @q1_dvertexes, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q1_dedges, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @abs(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %43, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** @q1_dsurfedges, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @q1_dvertexes, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q1_dedges, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @abs(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @VectorSubtract(i32* %81, i32* %82, i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @VectorSubtract(i32* %85, i32* %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @CrossProduct(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @VectorNormalize(i32 %93)
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call float @DotProduct(i32* %95, i32 %96)
  %98 = load float*, float** %6, align 8
  store float %97, float* %98, align 4
  ret void
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local float @DotProduct(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

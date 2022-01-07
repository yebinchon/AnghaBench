; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q1.c_Q1_FaceArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q1.c_Q1_FaceArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32 }

@q1_dedges = common dso_local global %struct.TYPE_7__* null, align 8
@q1_dvertexes = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Q1_FaceArea(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q1_dedges, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %13
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q1_dvertexes, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  store float 0.000000e+00, float* %4, align 4
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %75, %1
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @q1_dedges, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %38
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %9, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q1_dvertexes, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @VectorSubtract(i32* %48, i32* %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @q1_dvertexes, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @VectorSubtract(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @CrossProduct(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = call double @VectorLength(i32 %68)
  %70 = fmul double 5.000000e-01, %69
  %71 = load float, float* %4, align 4
  %72 = fpext float %71 to double
  %73 = fadd double %72, %70
  %74 = fptrunc double %73 to float
  store float %74, float* %4, align 4
  br label %75

75:                                               ; preds = %31
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %24

78:                                               ; preds = %24
  %79 = load float, float* %4, align 4
  ret float %79
}

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local double @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_FaceArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_FaceArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64, i32 }

@aasworld = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AAS_FaceArea(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 2), align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @abs(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %11, align 8
  %25 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32*, i32** %25, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  store float 0.000000e+00, float* %6, align 4
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %99, %1
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %35
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 0), align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 2), align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @abs(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %11, align 8
  %59 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32*, i32** %59, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @VectorSubtract(i32* %68, i32* %69, i32 %70)
  %72 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aasworld, i32 0, i32 1), align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %75, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32*, i32** %72, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @VectorSubtract(i32* %84, i32* %85, i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @CrossProduct(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = call double @VectorLength(i32 %92)
  %94 = fmul double 5.000000e-01, %93
  %95 = load float, float* %6, align 4
  %96 = fpext float %95 to double
  %97 = fadd double %96, %94
  %98 = fptrunc double %97 to float
  store float %98, float* %6, align 4
  br label %99

99:                                               ; preds = %42
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %35

102:                                              ; preds = %35
  %103 = load float, float* %6, align 4
  ret float %103
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local double @VectorLength(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

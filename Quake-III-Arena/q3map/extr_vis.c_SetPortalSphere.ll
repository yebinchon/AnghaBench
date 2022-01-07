; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_SetPortalSphere.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_SetPortalSphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, float, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@vec3_origin = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetPortalSphere(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %6, align 8
  %12 = load i32*, i32** @vec3_origin, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @VectorCopy(i32* %12, i32* %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @VectorAdd(i32* %22, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %15

35:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, %42
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %36

52:                                               ; preds = %36
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @VectorSubtract(i32 %66, i32* %67, i32* %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call float @VectorLength(i32* %70)
  store float %71, float* %7, align 4
  %72 = load float, float* %7, align 4
  %73 = load float, float* %8, align 4
  %74 = fcmp ogt float %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load float, float* %7, align 4
  store float %76, float* %8, align 4
  br label %77

77:                                               ; preds = %75, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @VectorCopy(i32* %82, i32* %85)
  %87 = load float, float* %8, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store float %87, float* %89, align 8
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32, i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local float @VectorLength(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_Winding_PlanesConcave.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_Winding_PlanesConcave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@qfalse = common dso_local global i32 0, align 4
@WCONVEX_EPSILON = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Winding_PlanesConcave(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, float %4, float %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %6
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %7, align 4
  br label %78

22:                                               ; preds = %17
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call float @DotProduct(i32 %30, i32 %37)
  %39 = load float, float* %13, align 4
  %40 = fsub float %38, %39
  %41 = load float, float* @WCONVEX_EPSILON, align 4
  %42 = fcmp ogt float %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @qtrue, align 4
  store i32 %44, i32* %7, align 4
  br label %78

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %23

49:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call float @DotProduct(i32 %57, i32 %64)
  %66 = load float, float* %12, align 4
  %67 = fsub float %65, %66
  %68 = load float, float* @WCONVEX_EPSILON, align 4
  %69 = fcmp ogt float %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* @qtrue, align 4
  store i32 %71, i32* %7, align 4
  br label %78

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %70, %43, %20
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

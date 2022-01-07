; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_ThumbPosition.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Slider_ThumbPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float (i64)* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_8__, i64, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { float }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { float, float }

@DC = common dso_local global %struct.TYPE_13__* null, align 8
@SLIDER_WIDTH = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Item_Slider_ThumbPosition(%struct.TYPE_11__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %19, %23
  %25 = add nsw i32 %24, 8
  %26 = sitofp i32 %25 to float
  store float %26, float* %6, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  store float %32, float* %6, align 4
  br label %33

33:                                               ; preds = %27, %15
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = icmp eq %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load float, float* %6, align 4
  store float %42, float* %2, align 4
  br label %94

43:                                               ; preds = %36, %33
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load float (i64)*, float (i64)** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call float %46(i64 %49)
  store float %50, float* %4, align 4
  %51 = load float, float* %4, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fcmp olt float %51, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 4
  store float %59, float* %4, align 4
  br label %71

60:                                               ; preds = %43
  %61 = load float, float* %4, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fcmp ogt float %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  store float %69, float* %4, align 4
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load float, float* %76, align 4
  %78 = fsub float %74, %77
  store float %78, float* %5, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = load float, float* %4, align 4
  %83 = fsub float %82, %81
  store float %83, float* %4, align 4
  %84 = load float, float* %5, align 4
  %85 = load float, float* %4, align 4
  %86 = fdiv float %85, %84
  store float %86, float* %4, align 4
  %87 = load float, float* @SLIDER_WIDTH, align 4
  %88 = load float, float* %4, align 4
  %89 = fmul float %88, %87
  store float %89, float* %4, align 4
  %90 = load float, float* %4, align 4
  %91 = load float, float* %6, align 4
  %92 = fadd float %91, %90
  store float %92, float* %6, align 4
  %93 = load float, float* %6, align 4
  store float %93, float* %2, align 4
  br label %94

94:                                               ; preds = %71, %41
  %95 = load float, float* %2, align 4
  ret float %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

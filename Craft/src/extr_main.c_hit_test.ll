; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_hit_test.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_hit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@g = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hit_test(i32 %0, float %1, float %2, float %3, float %4, float %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  store i32 %0, i32* %10, align 4
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %33 = load float, float* %11, align 4
  %34 = call i32 @chunked(float %33)
  store i32 %34, i32* %21, align 4
  %35 = load float, float* %13, align 4
  %36 = call i32 @chunked(float %35)
  store i32 %36, i32* %22, align 4
  %37 = load float, float* %14, align 4
  %38 = load float, float* %15, align 4
  %39 = call i32 @get_sight_vector(float %37, float %38, float* %23, float* %24, float* %25)
  store i32 0, i32* %26, align 4
  br label %40

40:                                               ; preds = %111, %9
  %41 = load i32, i32* %26, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %26, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %27, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i32 @chunk_distance(%struct.TYPE_4__* %53, i32 %54, i32 %55)
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %111

59:                                               ; preds = %46
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %10, align 4
  %63 = load float, float* %11, align 4
  %64 = load float, float* %12, align 4
  %65 = load float, float* %13, align 4
  %66 = load float, float* %23, align 4
  %67 = load float, float* %24, align 4
  %68 = load float, float* %25, align 4
  %69 = call i32 @_hit_test(i32* %61, i32 8, i32 %62, float %63, float %64, float %65, float %66, float %67, float %68, i32* %28, i32* %29, i32* %30)
  store i32 %69, i32* %31, align 4
  %70 = load i32, i32* %31, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %110

72:                                               ; preds = %59
  %73 = load i32, i32* %28, align 4
  %74 = sitofp i32 %73 to float
  %75 = load float, float* %11, align 4
  %76 = fsub float %74, %75
  %77 = fptosi float %76 to i32
  %78 = call i64 @powf(i32 %77, i32 2)
  %79 = load i32, i32* %29, align 4
  %80 = sitofp i32 %79 to float
  %81 = load float, float* %12, align 4
  %82 = fsub float %80, %81
  %83 = fptosi float %82 to i32
  %84 = call i64 @powf(i32 %83, i32 2)
  %85 = add nsw i64 %78, %84
  %86 = load i32, i32* %30, align 4
  %87 = sitofp i32 %86 to float
  %88 = load float, float* %13, align 4
  %89 = fsub float %87, %88
  %90 = fptosi float %89 to i32
  %91 = call i64 @powf(i32 %90, i32 2)
  %92 = add nsw i64 %85, %91
  %93 = call float @sqrtf(i64 %92)
  store float %93, float* %32, align 4
  %94 = load float, float* %20, align 4
  %95 = fcmp oeq float %94, 0.000000e+00
  br i1 %95, label %100, label %96

96:                                               ; preds = %72
  %97 = load float, float* %32, align 4
  %98 = load float, float* %20, align 4
  %99 = fcmp olt float %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96, %72
  %101 = load float, float* %32, align 4
  store float %101, float* %20, align 4
  %102 = load i32, i32* %28, align 4
  %103 = load i32*, i32** %16, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %29, align 4
  %105 = load i32*, i32** %17, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %30, align 4
  %107 = load i32*, i32** %18, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %31, align 4
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %100, %96
  br label %110

110:                                              ; preds = %109, %59
  br label %111

111:                                              ; preds = %110, %58
  %112 = load i32, i32* %26, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %26, align 4
  br label %40

114:                                              ; preds = %40
  %115 = load i32, i32* %19, align 4
  ret i32 %115
}

declare dso_local i32 @chunked(float) #1

declare dso_local i32 @get_sight_vector(float, float, float*, float*, float*) #1

declare dso_local i32 @chunk_distance(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @_hit_test(i32*, i32, i32, float, float, float, float, float, float, i32*, i32*, i32*) #1

declare dso_local float @sqrtf(i64) #1

declare dso_local i64 @powf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube6x1_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube6x1_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, float*)* @cube6x1_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cube6x1_to_xyz(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fcmp ogt float %24, 0.000000e+00
  br i1 %25, label %26, label %36

26:                                               ; preds = %6
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = fdiv float %32, 6.000000e+00
  %34 = fdiv float %29, %33
  %35 = fsub float 1.000000e+00, %34
  br label %41

36:                                               ; preds = %6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load float, float* %38, align 4
  %40 = fsub float 1.000000e+00, %39
  br label %41

41:                                               ; preds = %36, %26
  %42 = phi float [ %35, %26 ], [ %40, %36 ]
  store float %42, float* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fcmp ogt float %45, 0.000000e+00
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load float, float* %52, align 4
  %54 = fdiv float %50, %53
  %55 = fsub float 1.000000e+00, %54
  br label %61

56:                                               ; preds = %41
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load float, float* %58, align 4
  %60 = fsub float 1.000000e+00, %59
  br label %61

61:                                               ; preds = %56, %47
  %62 = phi float [ %55, %47 ], [ %60, %56 ]
  store float %62, float* %14, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sitofp i32 %63 to float
  %65 = fdiv float %64, 6.000000e+00
  store float %65, float* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sitofp i32 %66 to float
  store float %67, float* %16, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %15, align 4
  %71 = fdiv float %69, %70
  %72 = fptosi float %71 to i32
  %73 = call i32 @floorf(i32 %72)
  store i32 %73, i32* %17, align 4
  %74 = load float, float* %15, align 4
  %75 = load i32, i32* %17, align 4
  %76 = sitofp i32 %75 to float
  %77 = fmul float %74, %76
  %78 = call i32 @ceilf(float %77)
  store i32 %78, i32* %18, align 4
  %79 = load float, float* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  %82 = sitofp i32 %81 to float
  %83 = fmul float %79, %82
  %84 = call i32 @ceilf(float %83)
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sitofp i32 %89 to float
  %91 = fadd float %90, 5.000000e-01
  %92 = fmul float 2.000000e+00, %91
  %93 = load i32, i32* %19, align 4
  %94 = sitofp i32 %93 to float
  %95 = fdiv float %92, %94
  %96 = fsub float %95, 1.000000e+00
  store float %96, float* %20, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sitofp i32 %97 to float
  %99 = fadd float %98, 5.000000e-01
  %100 = fmul float 2.000000e+00, %99
  %101 = load float, float* %16, align 4
  %102 = fdiv float %100, %101
  %103 = fsub float %102, 1.000000e+00
  store float %103, float* %21, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = load float, float* %20, align 4
  %106 = load float, float* %21, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load float*, float** %12, align 8
  %109 = load float, float* %13, align 4
  %110 = load float, float* %14, align 4
  %111 = call i32 @cube_to_xyz(%struct.TYPE_4__* %104, float %105, float %106, i32 %107, float* %108, float %109, float %110)
  ret void
}

declare dso_local i32 @floorf(i32) #1

declare dso_local i32 @ceilf(float) #1

declare dso_local i32 @cube_to_xyz(%struct.TYPE_4__*, float, float, i32, float*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

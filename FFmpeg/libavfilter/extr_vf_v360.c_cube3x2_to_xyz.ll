; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube3x2_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_cube3x2_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32, i32, i32, float*)* @cube3x2_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cube3x2_to_xyz(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fcmp ogt float %28, 0.000000e+00
  br i1 %29, label %30, label %40

30:                                               ; preds = %6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = fdiv float %36, 3.000000e+00
  %38 = fdiv float %33, %37
  %39 = fsub float 1.000000e+00, %38
  br label %45

40:                                               ; preds = %6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load float, float* %42, align 4
  %44 = fsub float 1.000000e+00, %43
  br label %45

45:                                               ; preds = %40, %30
  %46 = phi float [ %39, %30 ], [ %44, %40 ]
  store float %46, float* %13, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = fcmp ogt float %49, 0.000000e+00
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load float, float* %56, align 4
  %58 = fdiv float %57, 2.000000e+00
  %59 = fdiv float %54, %58
  %60 = fsub float 1.000000e+00, %59
  br label %66

61:                                               ; preds = %45
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load float, float* %63, align 4
  %65 = fsub float 1.000000e+00, %64
  br label %66

66:                                               ; preds = %61, %51
  %67 = phi float [ %60, %51 ], [ %65, %61 ]
  store float %67, float* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %69, 3.000000e+00
  store float %70, float* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %72, 2.000000e+00
  store float %73, float* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sitofp i32 %74 to float
  %76 = load float, float* %15, align 4
  %77 = fdiv float %75, %76
  %78 = fptosi float %77 to i32
  %79 = call i32 @floorf(i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sitofp i32 %80 to float
  %82 = load float, float* %16, align 4
  %83 = fdiv float %81, %82
  %84 = fptosi float %83 to i32
  %85 = call i32 @floorf(i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = mul nsw i32 3, %87
  %89 = add nsw i32 %86, %88
  store i32 %89, i32* %19, align 4
  %90 = load float, float* %15, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sitofp i32 %91 to float
  %93 = fmul float %90, %92
  %94 = call i32 @ceilf(float %93)
  store i32 %94, i32* %20, align 4
  %95 = load float, float* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = sitofp i32 %96 to float
  %98 = fmul float %95, %97
  %99 = call i32 @ceilf(float %98)
  store i32 %99, i32* %21, align 4
  %100 = load float, float* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  %103 = sitofp i32 %102 to float
  %104 = fmul float %100, %103
  %105 = call i32 @ceilf(float %104)
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %22, align 4
  %108 = load float, float* %16, align 4
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  %111 = sitofp i32 %110 to float
  %112 = fmul float %108, %111
  %113 = call i32 @ceilf(float %112)
  %114 = load i32, i32* %21, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %20, align 4
  %118 = sub nsw i32 %116, %117
  %119 = sitofp i32 %118 to float
  %120 = fadd float %119, 5.000000e-01
  %121 = fmul float 2.000000e+00, %120
  %122 = load i32, i32* %22, align 4
  %123 = sitofp i32 %122 to float
  %124 = fdiv float %121, %123
  %125 = fsub float %124, 1.000000e+00
  store float %125, float* %24, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sitofp i32 %128 to float
  %130 = fadd float %129, 5.000000e-01
  %131 = fmul float 2.000000e+00, %130
  %132 = load i32, i32* %23, align 4
  %133 = sitofp i32 %132 to float
  %134 = fdiv float %131, %133
  %135 = fsub float %134, 1.000000e+00
  store float %135, float* %25, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = load float, float* %24, align 4
  %138 = load float, float* %25, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load float*, float** %12, align 8
  %141 = load float, float* %13, align 4
  %142 = load float, float* %14, align 4
  %143 = call i32 @cube_to_xyz(%struct.TYPE_4__* %136, float %137, float %138, i32 %139, float* %140, float %141, float %142)
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

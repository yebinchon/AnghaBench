; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_barrel_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_barrel_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI_4 = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @barrel_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @barrel_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  store float 0x3FEFAE1480000000, float* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 4, %31
  %33 = sdiv i32 %32, 5
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %6
  %36 = load float, float* @M_PI_4, align 4
  store float %36, float* %17, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 4, %37
  %39 = sdiv i32 %38, 5
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sitofp i32 %41 to float
  %43 = fmul float 2.000000e+00, %42
  %44 = load i32, i32* %18, align 4
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %43, %45
  %47 = fsub float %46, 1.000000e+00
  %48 = load float, float* @M_PI, align 4
  %49 = fmul float %47, %48
  %50 = fdiv float %49, 0x3FEFAE1480000000
  store float %50, float* %20, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sitofp i32 %51 to float
  %53 = fmul float 2.000000e+00, %52
  %54 = load i32, i32* %19, align 4
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %53, %55
  %57 = fsub float %56, 1.000000e+00
  %58 = load float, float* %17, align 4
  %59 = fmul float %57, %58
  %60 = fdiv float %59, 0x3FEFAE1480000000
  store float %60, float* %21, align 4
  %61 = load float, float* %20, align 4
  %62 = call float @sinf(float %61) #3
  store float %62, float* %22, align 4
  %63 = load float, float* %20, align 4
  %64 = call float @cosf(float %63) #3
  store float %64, float* %23, align 4
  %65 = load float, float* %21, align 4
  %66 = call float @sinf(float %65) #3
  store float %66, float* %24, align 4
  %67 = load float, float* %21, align 4
  %68 = call float @cosf(float %67) #3
  store float %68, float* %25, align 4
  %69 = load float, float* %25, align 4
  %70 = load float, float* %22, align 4
  %71 = fmul float %69, %70
  store float %71, float* %14, align 4
  %72 = load float, float* %24, align 4
  %73 = fneg float %72
  store float %73, float* %15, align 4
  %74 = load float, float* %25, align 4
  %75 = fneg float %74
  %76 = load float, float* %23, align 4
  %77 = fmul float %75, %76
  store float %77, float* %16, align 4
  br label %138

78:                                               ; preds = %6
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %79, 5
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %27, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %27, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %111

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %26, align 4
  %89 = mul nsw i32 4, %88
  %90 = sub nsw i32 %87, %89
  %91 = sitofp i32 %90 to float
  %92 = fmul float 2.000000e+00, %91
  %93 = load i32, i32* %26, align 4
  %94 = sitofp i32 %93 to float
  %95 = fdiv float %92, %94
  %96 = fsub float %95, 1.000000e+00
  store float %96, float* %28, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sitofp i32 %97 to float
  %99 = fmul float 2.000000e+00, %98
  %100 = load i32, i32* %27, align 4
  %101 = sitofp i32 %100 to float
  %102 = fdiv float %99, %101
  %103 = fsub float %102, 1.000000e+00
  store float %103, float* %29, align 4
  %104 = load float, float* %28, align 4
  %105 = fdiv float %104, 0x3FEFAE1480000000
  store float %105, float* %28, align 4
  %106 = load float, float* %29, align 4
  %107 = fdiv float %106, 0x3FEFAE1480000000
  store float %107, float* %29, align 4
  %108 = load float, float* %28, align 4
  store float %108, float* %14, align 4
  store float 1.000000e+00, float* %15, align 4
  %109 = load float, float* %29, align 4
  %110 = fneg float %109
  store float %110, float* %16, align 4
  br label %137

111:                                              ; preds = %78
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %26, align 4
  %114 = mul nsw i32 4, %113
  %115 = sub nsw i32 %112, %114
  %116 = sitofp i32 %115 to float
  %117 = fmul float 2.000000e+00, %116
  %118 = load i32, i32* %26, align 4
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %117, %119
  %121 = fsub float %120, 1.000000e+00
  store float %121, float* %28, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %27, align 4
  %124 = sub nsw i32 %122, %123
  %125 = sitofp i32 %124 to float
  %126 = fmul float 2.000000e+00, %125
  %127 = load i32, i32* %27, align 4
  %128 = sitofp i32 %127 to float
  %129 = fdiv float %126, %128
  %130 = fsub float %129, 1.000000e+00
  store float %130, float* %29, align 4
  %131 = load float, float* %28, align 4
  %132 = fdiv float %131, 0x3FEFAE1480000000
  store float %132, float* %28, align 4
  %133 = load float, float* %29, align 4
  %134 = fdiv float %133, 0x3FEFAE1480000000
  store float %134, float* %29, align 4
  %135 = load float, float* %28, align 4
  store float %135, float* %14, align 4
  store float -1.000000e+00, float* %15, align 4
  %136 = load float, float* %29, align 4
  store float %136, float* %16, align 4
  br label %137

137:                                              ; preds = %111, %86
  br label %138

138:                                              ; preds = %137, %35
  %139 = load float, float* %14, align 4
  %140 = load float*, float** %12, align 8
  %141 = getelementptr inbounds float, float* %140, i64 0
  store float %139, float* %141, align 4
  %142 = load float, float* %15, align 4
  %143 = load float*, float** %12, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  store float %142, float* %144, align 4
  %145 = load float, float* %16, align 4
  %146 = load float*, float** %12, align 8
  %147 = getelementptr inbounds float, float* %146, i64 2
  store float %145, float* %147, align 4
  %148 = load float*, float** %12, align 8
  %149 = call i32 @normalize_vector(float* %148)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @normalize_vector(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_eac.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_eac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@M_2_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_eac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_eac(%struct.TYPE_4__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32]*, align 8
  %14 = alloca [4 x i32]*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  store float 2.000000e+00, float* %17, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sitofp i32 %30 to float
  %32 = fdiv float 2.000000e+00, %31
  store float %32, float* %18, align 4
  %33 = load i32, i32* %12, align 4
  %34 = sitofp i32 %33 to float
  %35 = fdiv float 2.000000e+00, %34
  store float %35, float* %19, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = load float*, float** %10, align 8
  %38 = call i32 @xyz_to_cube(%struct.TYPE_4__* %36, float* %37, float* %20, float* %21, i32* %24)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %24, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %25, align 4
  %46 = load i32, i32* %25, align 4
  %47 = srem i32 %46, 3
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %25, align 4
  %49 = sdiv i32 %48, 3
  store i32 %49, i32* %27, align 4
  %50 = load float, float* @M_2_PI, align 4
  %51 = load float, float* %20, align 4
  %52 = call float @atanf(float %51) #3
  %53 = fmul float %50, %52
  %54 = fadd float %53, 5.000000e-01
  store float %54, float* %20, align 4
  %55 = load float, float* @M_2_PI, align 4
  %56 = load float, float* %21, align 4
  %57 = call float @atanf(float %56) #3
  %58 = fmul float %55, %57
  %59 = fadd float %58, 5.000000e-01
  store float %59, float* %21, align 4
  %60 = load float, float* %20, align 4
  %61 = load i32, i32* %26, align 4
  %62 = sitofp i32 %61 to float
  %63 = fadd float %60, %62
  %64 = load float, float* %18, align 4
  %65 = fmul float 2.000000e+00, %64
  %66 = fsub float 1.000000e+00, %65
  %67 = fmul float %63, %66
  %68 = fdiv float %67, 3.000000e+00
  %69 = load float, float* %18, align 4
  %70 = fadd float %68, %69
  store float %70, float* %20, align 4
  %71 = load float, float* %21, align 4
  %72 = load float, float* %19, align 4
  %73 = fmul float 2.000000e+00, %72
  %74 = fsub float 5.000000e-01, %73
  %75 = fmul float %71, %74
  %76 = load float, float* %19, align 4
  %77 = fadd float %75, %76
  %78 = load i32, i32* %27, align 4
  %79 = sitofp i32 %78 to float
  %80 = fmul float 5.000000e-01, %79
  %81 = fadd float %77, %80
  store float %81, float* %21, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sitofp i32 %82 to float
  %84 = load float, float* %20, align 4
  %85 = fmul float %84, %83
  store float %85, float* %20, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sitofp i32 %86 to float
  %88 = load float, float* %21, align 4
  %89 = fmul float %88, %87
  store float %89, float* %21, align 4
  %90 = load float, float* %20, align 4
  %91 = fsub float %90, 5.000000e-01
  store float %91, float* %20, align 4
  %92 = load float, float* %21, align 4
  %93 = fsub float %92, 5.000000e-01
  store float %93, float* %21, align 4
  %94 = load float, float* %20, align 4
  %95 = call i32 @floorf(float %94)
  store i32 %95, i32* %22, align 4
  %96 = load float, float* %21, align 4
  %97 = call i32 @floorf(float %96)
  store i32 %97, i32* %23, align 4
  %98 = load float, float* %20, align 4
  %99 = load i32, i32* %22, align 4
  %100 = sitofp i32 %99 to float
  %101 = fsub float %98, %100
  %102 = load float*, float** %15, align 8
  store float %101, float* %102, align 4
  %103 = load float, float* %21, align 4
  %104 = load i32, i32* %23, align 4
  %105 = sitofp i32 %104 to float
  %106 = fsub float %103, %105
  %107 = load float*, float** %16, align 8
  store float %106, float* %107, align 4
  store i32 -1, i32* %28, align 4
  br label %108

108:                                              ; preds = %150, %8
  %109 = load i32, i32* %28, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %153

111:                                              ; preds = %108
  store i32 -1, i32* %29, align 4
  br label %112

112:                                              ; preds = %146, %111
  %113 = load i32, i32* %29, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %29, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @av_clip(i32 %118, i32 0, i32 %120)
  %122 = load [4 x i32]*, [4 x i32]** %13, align 8
  %123 = load i32, i32* %28, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 %125
  %127 = load i32, i32* %29, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %126, i64 0, i64 %129
  store i32 %121, i32* %130, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %28, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @av_clip(i32 %133, i32 0, i32 %135)
  %137 = load [4 x i32]*, [4 x i32]** %14, align 8
  %138 = load i32, i32* %28, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %137, i64 %140
  %142 = load i32, i32* %29, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %141, i64 0, i64 %144
  store i32 %136, i32* %145, align 4
  br label %146

146:                                              ; preds = %115
  %147 = load i32, i32* %29, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %29, align 4
  br label %112

149:                                              ; preds = %112
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %28, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %28, align 4
  br label %108

153:                                              ; preds = %108
  ret void
}

declare dso_local i32 @xyz_to_cube(%struct.TYPE_4__*, float*, float*, float*, i32*) #1

; Function Attrs: nounwind
declare dso_local float @atanf(float) #2

declare dso_local i32 @floorf(float) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

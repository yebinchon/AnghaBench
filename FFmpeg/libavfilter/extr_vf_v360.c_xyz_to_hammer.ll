; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_hammer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_hammer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_hammer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_hammer(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
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
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %27 = load float*, float** %10, align 8
  %28 = getelementptr inbounds float, float* %27, i64 0
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %10, align 8
  %31 = getelementptr inbounds float, float* %30, i64 2
  %32 = load float, float* %31, align 4
  %33 = fneg float %32
  %34 = call float @atan2f(float %29, float %33) #3
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = fmul float %34, %39
  store float %40, float* %17, align 4
  %41 = load float*, float** %10, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %10, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = fmul float %43, %46
  %48 = fsub float 1.000000e+00, %47
  %49 = call float @sqrtf(float %48)
  %50 = load float, float* %17, align 4
  %51 = fmul float %50, 5.000000e-01
  %52 = call float @cosf(float %51) #3
  %53 = fmul float %49, %52
  %54 = fadd float 1.000000e+00, %53
  %55 = call float @sqrtf(float %54)
  store float %55, float* %18, align 4
  %56 = load float*, float** %10, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = load float*, float** %10, align 8
  %60 = getelementptr inbounds float, float* %59, i64 1
  %61 = load float, float* %60, align 4
  %62 = fmul float %58, %61
  %63 = fsub float 1.000000e+00, %62
  %64 = call float @sqrtf(float %63)
  %65 = load float, float* %17, align 4
  %66 = fmul float %65, 5.000000e-01
  %67 = call float @sinf(float %66)
  %68 = fmul float %64, %67
  %69 = load float, float* %18, align 4
  %70 = fdiv float %68, %69
  store float %70, float* %19, align 4
  %71 = load float*, float** %10, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = fneg float %73
  %75 = load float, float* %18, align 4
  %76 = fdiv float %74, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load float*, float** %78, align 8
  %80 = getelementptr inbounds float, float* %79, i64 1
  %81 = load float, float* %80, align 4
  %82 = fmul float %76, %81
  store float %82, float* %20, align 4
  %83 = load float, float* %19, align 4
  %84 = fadd float %83, 1.000000e+00
  %85 = load i32, i32* %11, align 4
  %86 = sitofp i32 %85 to float
  %87 = fmul float %84, %86
  %88 = fdiv float %87, 2.000000e+00
  store float %88, float* %21, align 4
  %89 = load float, float* %20, align 4
  %90 = fadd float %89, 1.000000e+00
  %91 = load i32, i32* %12, align 4
  %92 = sitofp i32 %91 to float
  %93 = fmul float %90, %92
  %94 = fdiv float %93, 2.000000e+00
  store float %94, float* %22, align 4
  %95 = load float, float* %21, align 4
  %96 = call i32 @floorf(float %95)
  store i32 %96, i32* %23, align 4
  %97 = load float, float* %22, align 4
  %98 = call i32 @floorf(float %97)
  store i32 %98, i32* %24, align 4
  %99 = load float, float* %21, align 4
  %100 = load i32, i32* %23, align 4
  %101 = sitofp i32 %100 to float
  %102 = fsub float %99, %101
  %103 = load float*, float** %15, align 8
  store float %102, float* %103, align 4
  %104 = load float, float* %22, align 4
  %105 = load i32, i32* %24, align 4
  %106 = sitofp i32 %105 to float
  %107 = fsub float %104, %106
  %108 = load float*, float** %16, align 8
  store float %107, float* %108, align 4
  store i32 -1, i32* %25, align 4
  br label %109

109:                                              ; preds = %151, %8
  %110 = load i32, i32* %25, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %154

112:                                              ; preds = %109
  store i32 -1, i32* %26, align 4
  br label %113

113:                                              ; preds = %147, %112
  %114 = load i32, i32* %26, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %26, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @av_clip(i32 %119, i32 0, i32 %121)
  %123 = load [4 x i32]*, [4 x i32]** %13, align 8
  %124 = load i32, i32* %25, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %123, i64 %126
  %128 = load i32, i32* %26, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %127, i64 0, i64 %130
  store i32 %122, i32* %131, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i32 @av_clip(i32 %134, i32 0, i32 %136)
  %138 = load [4 x i32]*, [4 x i32]** %14, align 8
  %139 = load i32, i32* %25, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %138, i64 %141
  %143 = load i32, i32* %26, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %142, i64 0, i64 %145
  store i32 %137, i32* %146, align 4
  br label %147

147:                                              ; preds = %116
  %148 = load i32, i32* %26, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %26, align 4
  br label %113

150:                                              ; preds = %113
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %25, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %25, align 4
  br label %109

154:                                              ; preds = %109
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

declare dso_local float @sqrtf(float) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local float @sinf(float) #2

declare dso_local i32 @floorf(float) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

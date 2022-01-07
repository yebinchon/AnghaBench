; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_dfisheye.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_xyz_to_dfisheye.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, i32, i32, [4 x i32]*, [4 x i32]*, float*, float*)* @xyz_to_dfisheye to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xyz_to_dfisheye(%struct.TYPE_3__* %0, float* %1, i32 %2, i32 %3, [4 x i32]* %4, [4 x i32]* %5, float* %6, float* %7) #0 {
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
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store float* %1, float** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store [4 x i32]* %4, [4 x i32]** %13, align 8
  store [4 x i32]* %5, [4 x i32]** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = fsub float 1.000000e+00, %32
  store float %33, float* %17, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %35, 2.000000e+00
  store float %36, float* %18, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sitofp i32 %37 to float
  store float %38, float* %19, align 4
  %39 = load float*, float** %10, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %10, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = call float @hypotf(float %41, float %44) #3
  store float %45, float* %20, align 4
  %46 = load float, float* %20, align 4
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %50

48:                                               ; preds = %8
  %49 = load float, float* %20, align 4
  br label %51

50:                                               ; preds = %8
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi float [ %49, %48 ], [ 1.000000e+00, %50 ]
  store float %52, float* %21, align 4
  %53 = load float*, float** %10, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load float, float* %54, align 4
  %56 = call i32 @fabsf(float %55)
  %57 = call float @acosf(i32 %56)
  %58 = load float, float* @M_PI, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %22, align 4
  %60 = load float, float* %22, align 4
  %61 = load float*, float** %10, align 8
  %62 = getelementptr inbounds float, float* %61, i64 0
  %63 = load float, float* %62, align 4
  %64 = fneg float %63
  %65 = load float, float* %21, align 4
  %66 = fdiv float %64, %65
  %67 = fmul float %60, %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = fmul float %67, %72
  %74 = load float, float* %17, align 4
  %75 = fmul float %73, %74
  %76 = fadd float %75, 5.000000e-01
  %77 = load float, float* %18, align 4
  %78 = fmul float %76, %77
  store float %78, float* %23, align 4
  %79 = load float, float* %22, align 4
  %80 = load float*, float** %10, align 8
  %81 = getelementptr inbounds float, float* %80, i64 1
  %82 = load float, float* %81, align 4
  %83 = fneg float %82
  %84 = load float, float* %21, align 4
  %85 = fdiv float %83, %84
  %86 = fmul float %79, %85
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load float*, float** %88, align 8
  %90 = getelementptr inbounds float, float* %89, i64 1
  %91 = load float, float* %90, align 4
  %92 = fmul float %86, %91
  %93 = load float, float* %17, align 4
  %94 = fmul float %92, %93
  %95 = fadd float %94, 5.000000e-01
  %96 = load float, float* %19, align 4
  %97 = fmul float %95, %96
  store float %97, float* %24, align 4
  %98 = load float*, float** %10, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  %100 = load float, float* %99, align 4
  %101 = fcmp oge float %100, 0.000000e+00
  br i1 %101, label %102, label %103

102:                                              ; preds = %51
  store i32 0, i32* %27, align 4
  br label %109

103:                                              ; preds = %51
  %104 = load float, float* %18, align 4
  %105 = call i32 @ceilf(float %104)
  store i32 %105, i32* %27, align 4
  %106 = load float, float* %18, align 4
  %107 = load float, float* %23, align 4
  %108 = fsub float %106, %107
  store float %108, float* %23, align 4
  br label %109

109:                                              ; preds = %103, %102
  %110 = load float, float* %23, align 4
  %111 = call i32 @floorf(float %110)
  store i32 %111, i32* %25, align 4
  %112 = load float, float* %24, align 4
  %113 = call i32 @floorf(float %112)
  store i32 %113, i32* %26, align 4
  %114 = load float, float* %23, align 4
  %115 = load i32, i32* %25, align 4
  %116 = sitofp i32 %115 to float
  %117 = fsub float %114, %116
  %118 = load float*, float** %15, align 8
  store float %117, float* %118, align 4
  %119 = load float, float* %24, align 4
  %120 = load i32, i32* %26, align 4
  %121 = sitofp i32 %120 to float
  %122 = fsub float %119, %121
  %123 = load float*, float** %16, align 8
  store float %122, float* %123, align 4
  store i32 -1, i32* %28, align 4
  br label %124

124:                                              ; preds = %168, %109
  %125 = load i32, i32* %28, align 4
  %126 = icmp slt i32 %125, 3
  br i1 %126, label %127, label %171

127:                                              ; preds = %124
  store i32 -1, i32* %29, align 4
  br label %128

128:                                              ; preds = %164, %127
  %129 = load i32, i32* %29, align 4
  %130 = icmp slt i32 %129, 3
  br i1 %130, label %131, label %167

131:                                              ; preds = %128
  %132 = load i32, i32* %27, align 4
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %29, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %137, 1
  %139 = call i32 @av_clip(i32 %136, i32 0, i32 %138)
  %140 = load [4 x i32]*, [4 x i32]** %13, align 8
  %141 = load i32, i32* %28, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %140, i64 %143
  %145 = load i32, i32* %29, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %144, i64 0, i64 %147
  store i32 %139, i32* %148, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %28, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i32 @av_clip(i32 %151, i32 0, i32 %153)
  %155 = load [4 x i32]*, [4 x i32]** %14, align 8
  %156 = load i32, i32* %28, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %155, i64 %158
  %160 = load i32, i32* %29, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 %162
  store i32 %154, i32* %163, align 4
  br label %164

164:                                              ; preds = %131
  %165 = load i32, i32* %29, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %29, align 4
  br label %128

167:                                              ; preds = %128
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %28, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %28, align 4
  br label %124

171:                                              ; preds = %124
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

declare dso_local float @acosf(i32) #2

declare dso_local i32 @fabsf(float) #2

declare dso_local i32 @ceilf(float) #2

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

; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_set_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_gfx_set_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { float*, i32, i32 }

@gl1_default_ortho = common dso_local global i32 0, align 4
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl1_gfx_set_viewport(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = uitofp i32 %20 to float
  %22 = load i32, i32* %10, align 4
  %23 = uitofp i32 %22 to float
  %24 = fdiv float %21, %23
  store float %24, float* %16, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float* %16, float** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = call i32 @video_context_driver_translate_aspect(%struct.TYPE_11__* %13)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call float (...) @video_driver_get_aspect_ratio()
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_12__* %43, i32 %44, i32 %45, float %46, i64 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  br label %155

59:                                               ; preds = %38, %6
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %139, label %67

67:                                               ; preds = %64
  %68 = call float (...) @video_driver_get_aspect_ratio()
  store float %68, float* %18, align 4
  %69 = load float, float* %16, align 4
  %70 = load float, float* %18, align 4
  %71 = fsub float %69, %70
  %72 = call float @llvm.fabs.f32(float %71)
  %73 = fcmp olt float %72, 0x3F1A36E2E0000000
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %122

75:                                               ; preds = %67
  %76 = load float, float* %16, align 4
  %77 = load float, float* %18, align 4
  %78 = fcmp ogt float %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load float, float* %18, align 4
  %81 = load float, float* %16, align 4
  %82 = fdiv float %80, %81
  %83 = fsub float %82, 1.000000e+00
  %84 = fdiv float %83, 2.000000e+00
  %85 = fadd float %84, 5.000000e-01
  store float %85, float* %19, align 4
  %86 = load i32, i32* %9, align 4
  %87 = uitofp i32 %86 to float
  %88 = load float, float* %19, align 4
  %89 = fsub float 5.000000e-01, %88
  %90 = fmul float %87, %89
  %91 = call i64 @roundf(float %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = uitofp i32 %93 to float
  %95 = fmul float 2.000000e+00, %94
  %96 = load float, float* %19, align 4
  %97 = fmul float %95, %96
  %98 = call i64 @roundf(float %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %9, align 4
  br label %121

100:                                              ; preds = %75
  %101 = load float, float* %16, align 4
  %102 = load float, float* %18, align 4
  %103 = fdiv float %101, %102
  %104 = fsub float %103, 1.000000e+00
  %105 = fdiv float %104, 2.000000e+00
  %106 = fadd float %105, 5.000000e-01
  store float %106, float* %19, align 4
  %107 = load i32, i32* %10, align 4
  %108 = uitofp i32 %107 to float
  %109 = load float, float* %19, align 4
  %110 = fsub float 5.000000e-01, %109
  %111 = fmul float %108, %110
  %112 = call i64 @roundf(float %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = uitofp i32 %114 to float
  %116 = fmul float 2.000000e+00, %115
  %117 = load float, float* %19, align 4
  %118 = fmul float %116, %117
  %119 = call i64 @roundf(float %118)
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %100, %79
  br label %122

122:                                              ; preds = %121, %74
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 4
  br label %154

139:                                              ; preds = %64, %59
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  store i32 0, i32* %145, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %139, %122
  br label %155

155:                                              ; preds = %154, %41
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @glViewport(i32 %159, i32 %163, i32 %167, i32 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @gl1_set_projection(%struct.TYPE_10__* %173, i32* @gl1_default_ortho, i32 %174)
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %155
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %178, %155
  ret void
}

declare dso_local i32 @video_context_driver_translate_aspect(%struct.TYPE_11__*) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_12__*, i32, i32, float, i64) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @gl1_set_projection(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_switch_update_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_switch_nx_gfx.c_switch_update_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_12__ = type { float, float, i32, i32, float, float }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"[Video] Aspect: %f\0A\00", align 1
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*)* @switch_update_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_update_viewport(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  store float %17, float* %9, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load float, float* %20, align 4
  store float %21, float* %10, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  store float %29, float* %9, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  store float %32, float* %10, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  %37 = load float, float* %9, align 4
  %38 = fsub float %36, %37
  %39 = fptosi float %38 to i32
  %40 = sdiv i32 %39, 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load float, float* %10, align 4
  %49 = fsub float %47, %48
  %50 = fptosi float %49 to i32
  %51 = sdiv i32 %50, 2
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load float, float* %9, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  store float %55, float* %58, align 8
  %59 = load float, float* %10, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  store float %59, float* %62, align 4
  br label %187

63:                                               ; preds = %2
  %64 = call float (...) @video_driver_get_aspect_ratio()
  store float %64, float* %8, align 4
  %65 = load float, float* %8, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), float %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load float, float* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = load float, float* %8, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_12__* %74, float %78, float %82, float %83, i32 %86)
  br label %187

88:                                               ; preds = %63
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %171

93:                                               ; preds = %88
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load float, float* %96, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load float, float* %100, align 4
  %102 = fdiv float %97, %101
  store float %102, float* %12, align 4
  %103 = load float, float* %12, align 4
  %104 = load float, float* %8, align 4
  %105 = fsub float %103, %104
  %106 = call float @llvm.fabs.f32(float %105)
  %107 = fcmp olt float %106, 0x3F1A36E2E0000000
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  br label %154

109:                                              ; preds = %93
  %110 = load float, float* %12, align 4
  %111 = load float, float* %8, align 4
  %112 = fcmp ogt float %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load float, float* %8, align 4
  %115 = load float, float* %12, align 4
  %116 = fdiv float %114, %115
  %117 = fsub float %116, 1.000000e+00
  %118 = fdiv float %117, 2.000000e+00
  %119 = fadd float %118, 5.000000e-01
  store float %119, float* %11, align 4
  %120 = load float, float* %9, align 4
  %121 = load float, float* %11, align 4
  %122 = fsub float 5.000000e-01, %121
  %123 = fmul float %120, %122
  %124 = call i64 @roundf(float %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load float, float* %9, align 4
  %127 = fmul float 2.000000e+00, %126
  %128 = load float, float* %11, align 4
  %129 = fmul float %127, %128
  %130 = call i64 @roundf(float %129)
  %131 = trunc i64 %130 to i32
  %132 = uitofp i32 %131 to float
  store float %132, float* %9, align 4
  br label %153

133:                                              ; preds = %109
  %134 = load float, float* %12, align 4
  %135 = load float, float* %8, align 4
  %136 = fdiv float %134, %135
  %137 = fsub float %136, 1.000000e+00
  %138 = fdiv float %137, 2.000000e+00
  %139 = fadd float %138, 5.000000e-01
  store float %139, float* %11, align 4
  %140 = load float, float* %10, align 4
  %141 = load float, float* %11, align 4
  %142 = fsub float 5.000000e-01, %141
  %143 = fmul float %140, %142
  %144 = call i64 @roundf(float %143)
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %7, align 4
  %146 = load float, float* %10, align 4
  %147 = fmul float 2.000000e+00, %146
  %148 = load float, float* %11, align 4
  %149 = fmul float %147, %148
  %150 = call i64 @roundf(float %149)
  %151 = trunc i64 %150 to i32
  %152 = uitofp i32 %151 to float
  store float %152, float* %10, align 4
  br label %153

153:                                              ; preds = %133, %113
  br label %154

154:                                              ; preds = %153, %108
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  store i32 %155, i32* %158, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load float, float* %9, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 4
  store float %163, float* %166, align 8
  %167 = load float, float* %10, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  store float %167, float* %170, align 4
  br label %186

171:                                              ; preds = %88
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 3
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  store i32 0, i32* %177, align 8
  %178 = load float, float* %9, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  store float %178, float* %181, align 8
  %182 = load float, float* %10, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 5
  store float %182, float* %185, align 4
  br label %186

186:                                              ; preds = %171, %154
  br label %187

187:                                              ; preds = %26, %186, %72
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

declare dso_local i32 @printf(i8*, float) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_12__*, float, float, float, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

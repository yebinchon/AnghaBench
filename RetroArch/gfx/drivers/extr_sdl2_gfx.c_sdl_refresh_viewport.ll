; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl_refresh_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl_refresh_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__, %struct.TYPE_12__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.video_viewport = type { i32, i32, i32, i32 }

@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @sdl_refresh_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_refresh_viewport(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.video_viewport*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %10 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @SDL_GetWindowSize(i32 %13, i32* %3, i32* %4)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call float (...) @video_driver_get_aspect_ratio()
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @video_viewport_get_scaled_integer(%struct.TYPE_15__* %44, i32 %45, i32 %46, float %47, i64 %51)
  br label %168

53:                                               ; preds = %1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ASPECT_RATIO_CUSTOM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %53
  %61 = call i64 (...) @video_viewport_get_custom()
  %62 = inttoptr i64 %61 to %struct.video_viewport*
  store %struct.video_viewport* %62, %struct.video_viewport** %6, align 8
  %63 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %64 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %70 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %76 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load %struct.video_viewport*, %struct.video_viewport** %6, align 8
  %82 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  br label %167

87:                                               ; preds = %53
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %166

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = sitofp i32 %94 to float
  %96 = load i32, i32* %4, align 4
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %95, %97
  store float %98, float* %8, align 4
  %99 = call float (...) @video_driver_get_aspect_ratio()
  store float %99, float* %9, align 4
  %100 = load float, float* %8, align 4
  %101 = load float, float* %9, align 4
  %102 = fsub float %100, %101
  %103 = call float @llvm.fabs.f32(float %102)
  %104 = fcmp olt float %103, 0x3F1A36E2E0000000
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %165

106:                                              ; preds = %93
  %107 = load float, float* %8, align 4
  %108 = load float, float* %9, align 4
  %109 = fcmp ogt float %107, %108
  br i1 %109, label %110, label %137

110:                                              ; preds = %106
  %111 = load float, float* %9, align 4
  %112 = load float, float* %8, align 4
  %113 = fdiv float %111, %112
  %114 = fsub float %113, 1.000000e+00
  %115 = fdiv float %114, 2.000000e+00
  %116 = fadd float %115, 5.000000e-01
  store float %116, float* %7, align 4
  %117 = load i32, i32* %3, align 4
  %118 = sitofp i32 %117 to float
  %119 = load float, float* %7, align 4
  %120 = fsub float 5.000000e-01, %119
  %121 = fmul float %118, %120
  %122 = call i64 @roundf(float %121)
  %123 = trunc i64 %122 to i32
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %3, align 4
  %128 = sitofp i32 %127 to float
  %129 = fmul float 2.000000e+00, %128
  %130 = load float, float* %7, align 4
  %131 = fmul float %129, %130
  %132 = call i64 @roundf(float %131)
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 4
  br label %164

137:                                              ; preds = %106
  %138 = load float, float* %8, align 4
  %139 = load float, float* %9, align 4
  %140 = fdiv float %138, %139
  %141 = fsub float %140, 1.000000e+00
  %142 = fdiv float %141, 2.000000e+00
  %143 = fadd float %142, 5.000000e-01
  store float %143, float* %7, align 4
  %144 = load i32, i32* %4, align 4
  %145 = sitofp i32 %144 to float
  %146 = load float, float* %7, align 4
  %147 = fsub float 5.000000e-01, %146
  %148 = fmul float %145, %147
  %149 = call i64 @roundf(float %148)
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* %4, align 4
  %155 = sitofp i32 %154 to float
  %156 = fmul float 2.000000e+00, %155
  %157 = load float, float* %7, align 4
  %158 = fmul float %156, %157
  %159 = call i64 @roundf(float %158)
  %160 = trunc i64 %159 to i32
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 3
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %137, %110
  br label %165

165:                                              ; preds = %164, %105
  br label %166

166:                                              ; preds = %165, %87
  br label %167

167:                                              ; preds = %166, %60
  br label %168

168:                                              ; preds = %167, %42
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %172 = call i32 @sdl_refresh_renderer(%struct.TYPE_14__* %171)
  ret void
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local i32 @SDL_GetWindowSize(i32, i32*, i32*) #1

declare dso_local i32 @video_viewport_get_scaled_integer(%struct.TYPE_15__*, i32, i32, float, i64) #1

declare dso_local float @video_driver_get_aspect_ratio(...) #1

declare dso_local i64 @video_viewport_get_custom(...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i64 @roundf(float) #1

declare dso_local i32 @sdl_refresh_renderer(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

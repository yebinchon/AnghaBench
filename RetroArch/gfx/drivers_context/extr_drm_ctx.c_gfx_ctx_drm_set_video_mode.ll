; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, float }
%struct.TYPE_10__ = type { i64, i64 }
%struct.drm_fb = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@g_drm_connector = common dso_local global %struct.TYPE_13__* null, align 8
@g_drm_mode = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"[KMS/EGL]: Did not find suitable video mode for %u x %u.\0A\00", align 1
@g_gbm_dev = common dso_local global i32 0, align 4
@GBM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@GBM_BO_USE_SCANOUT = common dso_local global i32 0, align 4
@GBM_BO_USE_RENDERING = common dso_local global i32 0, align 4
@g_gbm_surface = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[KMS/EGL]: Couldn't create GBM surface.\0A\00", align 1
@drm_api = common dso_local global i32 0, align 4
@g_bo = common dso_local global i32 0, align 4
@g_drm_fd = common dso_local global i32 0, align 4
@g_crtc_id = common dso_local global i32 0, align 4
@g_connector_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_10__*, i32, i32, i32)* @gfx_ctx_drm_set_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_drm_set_video_mode(i8* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_fb*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store %struct.drm_fb* null, %struct.drm_fb** %15, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %16, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %183

24:                                               ; preds = %5
  %25 = call i32 (...) @frontend_driver_install_signal_handler()
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, float 5.000000e-01, float 1.000000e+00
  store float %31, float* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 0
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** @g_drm_mode, align 8
  br label %112

45:                                               ; preds = %37
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %108, %45
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %53, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %64, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63, %52
  br label %108

75:                                               ; preds = %63
  %76 = load float, float* %12, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load float, float* %83, align 4
  %85 = fmul float %76, %84
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sitofp i64 %88 to float
  %90 = fsub float %85, %89
  %91 = fptosi float %90 to i64
  %92 = call float @fabsf(i64 %91)
  store float %92, float* %18, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_drm_mode, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %75
  %96 = load float, float* %18, align 4
  %97 = load float, float* %17, align 4
  %98 = fcmp olt float %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95, %75
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** @g_drm_connector, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** @g_drm_mode, align 8
  %106 = load float, float* %18, align 4
  store float %106, float* %17, align 4
  br label %107

107:                                              ; preds = %99, %95
  br label %108

108:                                              ; preds = %107, %74
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %46

111:                                              ; preds = %46
  br label %112

112:                                              ; preds = %111, %40
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_drm_mode, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  br label %174

119:                                              ; preds = %112
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_drm_mode, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_drm_mode, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @g_gbm_dev, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @GBM_FORMAT_XRGB8888, align 4
  %138 = load i32, i32* @GBM_BO_USE_SCANOUT, align 4
  %139 = load i32, i32* @GBM_BO_USE_RENDERING, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @gbm_surface_create(i32 %130, i32 %133, i32 %136, i32 %137, i32 %140)
  store i32 %141, i32* @g_gbm_surface, align 4
  %142 = load i32, i32* @g_gbm_surface, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %119
  %145 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %174

146:                                              ; preds = %119
  %147 = load i32, i32* @drm_api, align 4
  switch i32 %147, label %150 [
    i32 130, label %148
    i32 129, label %148
    i32 128, label %148
    i32 131, label %149
  ]

148:                                              ; preds = %146, %146, %146
  br label %151

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %146, %149
  br label %151

151:                                              ; preds = %150, %148
  %152 = load i32, i32* @g_gbm_surface, align 4
  %153 = call i32 @gbm_surface_lock_front_buffer(i32 %152)
  store i32 %153, i32* @g_bo, align 4
  %154 = load i32, i32* @g_bo, align 4
  %155 = call i64 @gbm_bo_get_user_data(i32 %154)
  %156 = inttoptr i64 %155 to %struct.drm_fb*
  store %struct.drm_fb* %156, %struct.drm_fb** %15, align 8
  %157 = load %struct.drm_fb*, %struct.drm_fb** %15, align 8
  %158 = icmp ne %struct.drm_fb* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* @g_bo, align 4
  %161 = call %struct.drm_fb* @drm_fb_get_from_bo(i32 %160)
  store %struct.drm_fb* %161, %struct.drm_fb** %15, align 8
  br label %162

162:                                              ; preds = %159, %151
  %163 = load i32, i32* @g_drm_fd, align 4
  %164 = load i32, i32* @g_crtc_id, align 4
  %165 = load %struct.drm_fb*, %struct.drm_fb** %15, align 8
  %166 = getelementptr inbounds %struct.drm_fb, %struct.drm_fb* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_drm_mode, align 8
  %169 = call i32 @drmModeSetCrtc(i32 %163, i32 %164, i32 %167, i32 0, i32 0, i32* @g_connector_id, i32 1, %struct.TYPE_12__* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %174

173:                                              ; preds = %162
  store i32 1, i32* %6, align 4
  br label %183

174:                                              ; preds = %172, %144, %115
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %176 = call i32 @gfx_ctx_drm_destroy_resources(%struct.TYPE_11__* %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %181 = call i32 @free(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %179, %174
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %173, %23
  %184 = load i32, i32* %6, align 4
  ret i32 %184
}

declare dso_local i32 @frontend_driver_install_signal_handler(...) #1

declare dso_local float @fabsf(i64) #1

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

declare dso_local i32 @gbm_surface_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gbm_surface_lock_front_buffer(i32) #1

declare dso_local i64 @gbm_bo_get_user_data(i32) #1

declare dso_local %struct.drm_fb* @drm_fb_get_from_bo(i32) #1

declare dso_local i32 @drmModeSetCrtc(i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @gfx_ctx_drm_destroy_resources(%struct.TYPE_11__*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

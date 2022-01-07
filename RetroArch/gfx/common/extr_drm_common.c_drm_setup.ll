; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_drm_common.c_drm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@g_drm_encoder = common dso_local global %struct.TYPE_3__* null, align 8
@g_crtc_id = common dso_local global i32 0, align 4
@g_drm_connector = common dso_local global %struct.TYPE_4__* null, align 8
@g_connector_id = common dso_local global i32 0, align 4
@g_orig_crtc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"[DRM]: Cannot find original CRTC.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_drm_encoder, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* @g_crtc_id, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_drm_connector, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @g_connector_id, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @g_crtc_id, align 4
  %11 = call i32 @drmModeGetCrtc(i32 %9, i32 %10)
  store i32 %11, i32* @g_orig_crtc, align 4
  %12 = load i32, i32* @g_orig_crtc, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @drmModeGetCrtc(i32, i32) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

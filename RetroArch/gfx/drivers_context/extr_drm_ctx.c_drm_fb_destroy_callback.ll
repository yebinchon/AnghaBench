; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_drm_fb_destroy_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_drm_fb_destroy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbm_bo = type { i32 }
%struct.drm_fb = type { i64 }

@g_drm_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbm_bo*, i8*)* @drm_fb_destroy_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_fb_destroy_callback(%struct.gbm_bo* %0, i8* %1) #0 {
  %3 = alloca %struct.gbm_bo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_fb*, align 8
  store %struct.gbm_bo* %0, %struct.gbm_bo** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.drm_fb*
  store %struct.drm_fb* %7, %struct.drm_fb** %5, align 8
  %8 = load %struct.drm_fb*, %struct.drm_fb** %5, align 8
  %9 = icmp ne %struct.drm_fb* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.drm_fb*, %struct.drm_fb** %5, align 8
  %12 = getelementptr inbounds %struct.drm_fb, %struct.drm_fb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @g_drm_fd, align 4
  %17 = load %struct.drm_fb*, %struct.drm_fb** %5, align 8
  %18 = getelementptr inbounds %struct.drm_fb, %struct.drm_fb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @drmModeRmFB(i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %10, %2
  %22 = load %struct.drm_fb*, %struct.drm_fb** %5, align 8
  %23 = call i32 @free(%struct.drm_fb* %22)
  ret void
}

declare dso_local i32 @drmModeRmFB(i32, i64) #1

declare dso_local i32 @free(%struct.drm_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

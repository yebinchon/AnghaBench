; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_flip.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { i64, i32 }
%struct.exynos_page = type { i32 }

@g_drm_fd = common dso_local global i32 0, align 4
@g_crtc_id = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[video_exynos]: failed to issue page flip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*, %struct.exynos_page*)* @exynos_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_flip(%struct.exynos_data* %0, %struct.exynos_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_data*, align 8
  %5 = alloca %struct.exynos_page*, align 8
  store %struct.exynos_data* %0, %struct.exynos_data** %4, align 8
  store %struct.exynos_page* %1, %struct.exynos_page** %5, align 8
  %6 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %7 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @drm_wait_flip(i32 -1)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @g_drm_fd, align 4
  %14 = load i32, i32* @g_crtc_id, align 4
  %15 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %16 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MODE_PAGE_FLIP_EVENT, align 4
  %19 = load %struct.exynos_page*, %struct.exynos_page** %5, align 8
  %20 = call i64 @drmModePageFlip(i32 %13, i32 %14, i32 %17, i32 %18, %struct.exynos_page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %37

24:                                               ; preds = %12
  %25 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24
  %30 = load %struct.exynos_data*, %struct.exynos_data** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @drm_wait_flip(i32 -1)
  br label %36

36:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @drm_wait_flip(i32) #1

declare dso_local i64 @drmModePageFlip(i32, i32, i32, i32, %struct.exynos_page*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

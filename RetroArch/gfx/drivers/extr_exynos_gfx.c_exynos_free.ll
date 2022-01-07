; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_data = type { i32*, i32**, i32*, i32 }

@g_drm_fd = common dso_local global i32 0, align 4
@g_crtc_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"[video_exynos]: failed to disable the CRTC.\0A\00", align 1
@EXYNOS_BUFFER_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_data*)* @exynos_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_free(%struct.exynos_data* %0) #0 {
  %2 = alloca %struct.exynos_data*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %2, align 8
  %4 = load i32, i32* @g_drm_fd, align 4
  %5 = load i32, i32* @g_crtc_id, align 4
  %6 = call i64 @drmModeSetCrtc(i32 %4, i32 %5, i32 0, i32 0, i32 0, i32* null, i32 0, i32* null)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %12 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %15 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @exynos_clean_up_pages(i32* %13, i32 %16)
  %18 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %19 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %23 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %43, %10
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @EXYNOS_BUFFER_COUNT, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %30 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @exynos_bo_destroy(i32* %35)
  %37 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %38 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %48 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @exynos_device_destroy(i32* %49)
  %51 = load %struct.exynos_data*, %struct.exynos_data** %2, align 8
  %52 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  ret void
}

declare dso_local i64 @drmModeSetCrtc(i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @exynos_clean_up_pages(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @exynos_bo_destroy(i32*) #1

declare dso_local i32 @exynos_device_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

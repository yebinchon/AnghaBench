; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.exynos_data = type { i32 }

@g_drm_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/dev/dri/card%d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"[video_exynos]: no compatible DRM device found\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"[video_exynos]: can't open DRM device\0A\00", align 1
@g_drm_fds = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@POLLIN = common dso_local global i32 0, align 4
@DRM_EVENT_CONTEXT_VERSION = common dso_local global i32 0, align 4
@g_drm_evctx = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@exynos_page_flip_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"[video_exynos]: using DRM device \22%s\22 with connector id %u.\0A\00", align 1
@g_drm_connector = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_data*)* @exynos_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_open(%struct.exynos_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.exynos_data* %0, %struct.exynos_data** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = bitcast [32 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = call i32 (...) @exynos_get_device_index()
  store i32 %9, i32* %7, align 4
  %10 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %11 = icmp ne %struct.exynos_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* @g_drm_fd, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @snprintf(i8* %17, i32 32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %22

20:                                               ; preds = %13
  %21 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %67

22:                                               ; preds = %16
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %24 = load i32, i32* @O_RDWR, align 4
  %25 = call i32 @open(i8* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @drm_get_resources(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %63

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @drm_get_decoder(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %63

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @drm_get_encoder(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_drm_fds, i32 0, i32 0), align 4
  %47 = load i32, i32* @POLLIN, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_drm_fds, i32 0, i32 1), align 4
  %48 = load i32, i32* @DRM_EVENT_CONTEXT_VERSION, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_drm_evctx, i32 0, i32 1), align 4
  %49 = load i32, i32* @exynos_page_flip_handler, align 4
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_drm_evctx, i32 0, i32 0), align 4
  %50 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %51 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %54 = call i32 @strncpy(i32 %52, i8* %53, i32 32)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* @g_drm_fd, align 4
  %56 = load %struct.exynos_data*, %struct.exynos_data** %3, align 8
  %57 = getelementptr inbounds %struct.exynos_data, %struct.exynos_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_drm_connector, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  store i32 0, i32* %2, align 4
  br label %67

63:                                               ; preds = %44, %39, %34
  %64 = call i32 (...) @drm_free()
  %65 = load i32, i32* @g_drm_fd, align 4
  %66 = call i32 @close(i32 %65)
  store i32 -1, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %45, %28, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @exynos_get_device_index(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @drm_get_resources(i32) #2

declare dso_local i32 @drm_get_decoder(i32) #2

declare dso_local i32 @drm_get_encoder(i32) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #2

declare dso_local i32 @drm_free(...) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

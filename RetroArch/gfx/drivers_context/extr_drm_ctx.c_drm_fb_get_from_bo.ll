; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_drm_fb_get_from_bo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_drm_fb_get_from_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb = type { i32, %struct.gbm_bo* }
%struct.gbm_bo = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[KMS]: New FB: %ux%u (stride: %u).\0A\00", align 1
@g_drm_fd = common dso_local global i32 0, align 4
@drm_fb_destroy_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"[KMS]: Failed to create FB: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_fb* (%struct.gbm_bo*)* @drm_fb_get_from_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_fb* @drm_fb_get_from_bo(%struct.gbm_bo* %0) #0 {
  %2 = alloca %struct.drm_fb*, align 8
  %3 = alloca %struct.gbm_bo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_fb*, align 8
  %10 = alloca %struct.TYPE_2__, align 4
  store %struct.gbm_bo* %0, %struct.gbm_bo** %3, align 8
  %11 = call i64 @calloc(i32 1, i32 16)
  %12 = inttoptr i64 %11 to %struct.drm_fb*
  store %struct.drm_fb* %12, %struct.drm_fb** %9, align 8
  %13 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %14 = load %struct.drm_fb*, %struct.drm_fb** %9, align 8
  %15 = getelementptr inbounds %struct.drm_fb, %struct.drm_fb* %14, i32 0, i32 1
  store %struct.gbm_bo* %13, %struct.gbm_bo** %15, align 8
  %16 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %17 = call i32 @gbm_bo_get_width(%struct.gbm_bo* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %19 = call i32 @gbm_bo_get_height(%struct.gbm_bo* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %21 = call i32 @gbm_bo_get_stride(%struct.gbm_bo* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %23 = call i32 @gbm_bo_get_handle(%struct.gbm_bo* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @g_drm_fd, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.drm_fb*, %struct.drm_fb** %9, align 8
  %37 = getelementptr inbounds %struct.drm_fb, %struct.drm_fb* %36, i32 0, i32 0
  %38 = call i32 @drmModeAddFB(i32 %31, i32 %32, i32 %33, i32 24, i32 32, i32 %34, i32 %35, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %48

42:                                               ; preds = %1
  %43 = load %struct.gbm_bo*, %struct.gbm_bo** %3, align 8
  %44 = load %struct.drm_fb*, %struct.drm_fb** %9, align 8
  %45 = load i32, i32* @drm_fb_destroy_callback, align 4
  %46 = call i32 @gbm_bo_set_user_data(%struct.gbm_bo* %43, %struct.drm_fb* %44, i32 %45)
  %47 = load %struct.drm_fb*, %struct.drm_fb** %9, align 8
  store %struct.drm_fb* %47, %struct.drm_fb** %2, align 8
  br label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.drm_fb*, %struct.drm_fb** %9, align 8
  %53 = call i32 @free(%struct.drm_fb* %52)
  store %struct.drm_fb* null, %struct.drm_fb** %2, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.drm_fb*, %struct.drm_fb** %2, align 8
  ret %struct.drm_fb* %55
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @gbm_bo_get_width(%struct.gbm_bo*) #1

declare dso_local i32 @gbm_bo_get_height(%struct.gbm_bo*) #1

declare dso_local i32 @gbm_bo_get_stride(%struct.gbm_bo*) #1

declare dso_local i32 @gbm_bo_get_handle(%struct.gbm_bo*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32) #1

declare dso_local i32 @drmModeAddFB(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @gbm_bo_set_user_data(%struct.gbm_bo*, %struct.drm_fb*, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.drm_fb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

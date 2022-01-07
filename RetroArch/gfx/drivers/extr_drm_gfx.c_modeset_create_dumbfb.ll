; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_modeset_create_dumbfb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_modeset_create_dumbfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.modeset_buf = type { i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32 }
%struct.drm_mode_map_dumb = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32 }
%struct.drm_mode_fb_cmd = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i32 }

@drm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DRM_IOCTL_MODE_CREATE_DUMB = common dso_local global i32 0, align 4
@DRM_IOCTL_MODE_ADDFB = common dso_local global i32 0, align 4
@DRM_IOCTL_MODE_MAP_DUMB = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DRM: cannot mmap dumb buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.modeset_buf*, i32, i32)* @modeset_create_dumbfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modeset_create_dumbfb(i32 %0, %struct.modeset_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.modeset_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mode_create_dumb, align 8
  %11 = alloca %struct.drm_mode_map_dumb, align 8
  %12 = alloca %struct.drm_mode_fb_cmd, align 8
  store i32 %0, i32* %6, align 4
  store %struct.modeset_buf* %1, %struct.modeset_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast %struct.drm_mode_create_dumb* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 72, i1 false)
  %14 = bitcast %struct.drm_mode_map_dumb* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 72, i1 false)
  %15 = bitcast %struct.drm_mode_fb_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 72, i1 false)
  %16 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %17 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 8
  store i32 %18, i32* %19, align 8
  %20 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %21 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 8
  %26 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drm, i32 0, i32 0), align 4
  %32 = load i32, i32* @DRM_IOCTL_MODE_CREATE_DUMB, align 4
  %33 = bitcast %struct.drm_mode_create_dumb* %10 to %struct.drm_mode_map_dumb*
  %34 = call i32 @drmIoctl(i32 %31, i32 %32, %struct.drm_mode_map_dumb* %33)
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 8
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 7
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 5
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 3
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 1
  store i32 24, i32* %50, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drm, i32 0, i32 0), align 4
  %52 = load i32, i32* @DRM_IOCTL_MODE_ADDFB, align 4
  %53 = bitcast %struct.drm_mode_fb_cmd* %12 to %struct.drm_mode_map_dumb*
  %54 = call i32 @drmIoctl(i32 %51, i32 %52, %struct.drm_mode_map_dumb* %53)
  %55 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %11, i32 0, i32 3
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drm, i32 0, i32 0), align 4
  %59 = load i32, i32* @DRM_IOCTL_MODE_MAP_DUMB, align 4
  %60 = call i32 @drmIoctl(i32 %58, i32 %59, %struct.drm_mode_map_dumb* %11)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %63 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %12, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %67 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %71 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %75 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %10, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %79 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %81 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @PROT_READ, align 4
  %84 = load i32, i32* @PROT_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MAP_SHARED, align 4
  %87 = load i32, i32* %6, align 4
  %88 = getelementptr inbounds %struct.drm_mode_map_dumb, %struct.drm_mode_map_dumb* %11, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mmap(i32 0, i64 %82, i32 %85, i32 %86, i32 %87, i32 %89)
  %91 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %92 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.modeset_buf*, %struct.modeset_buf** %7, align 8
  %94 = getelementptr inbounds %struct.modeset_buf, %struct.modeset_buf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAP_FAILED, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %4
  %99 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %101

100:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %98
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @drmIoctl(i32, i32, %struct.drm_mode_map_dumb*) #2

declare dso_local i32 @mmap(i32, i64, i32, i32, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, %struct.TYPE_5__*)* }
%struct.drm_video = type { i32, i32, i32, i32*, i32, i64 }

@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_5__*)* @drm_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.drm_video*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.drm_video*
  store %struct.drm_video* %20, %struct.drm_video** %18, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %23 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %29 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %89

32:                                               ; preds = %26, %8
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i32 1, i32* %9, align 4
  br label %104

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %42 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %45 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %48 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %50 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %55 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %56 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %55, i32 0, i32 3
  %57 = call i32 @drm_surface_free(%struct.drm_video* %54, i32** %56)
  br label %58

58:                                               ; preds = %53, %39
  %59 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %64 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 4, i32 2
  %69 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %70 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  br label %77

75:                                               ; preds = %58
  %76 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %80 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %83 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %82, i32 0, i32 3
  %84 = call i32 @drm_surface_setup(%struct.drm_video* %59, i32 %60, i32 %61, i32 %62, i32 %68, i32 %78, i32 255, i32 %81, i32 3, i32 0, i32** %83)
  %85 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %86 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @drm_plane_setup(i32* %87)
  br label %89

89:                                               ; preds = %77, %26
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32 (i32, %struct.TYPE_5__*)*, i32 (i32, %struct.TYPE_5__*)** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %97 = call i32 %92(i32 %95, %struct.TYPE_5__* %96)
  %98 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.drm_video*, %struct.drm_video** %18, align 8
  %101 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @drm_surface_update(%struct.drm_video* %98, i8* %99, i32* %102)
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %89, %38
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @drm_surface_free(%struct.drm_video*, i32**) #1

declare dso_local i32 @drm_surface_setup(%struct.drm_video*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @drm_plane_setup(i32*) #1

declare dso_local i32 @drm_surface_update(%struct.drm_video*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

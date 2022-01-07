; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_set_texture_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_set_texture_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_video = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @drm_set_texture_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_set_texture_enable(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_video*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.drm_video*
  store %struct.drm_video* %9, %struct.drm_video** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = load %struct.drm_video*, %struct.drm_video** %7, align 8
  %14 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.drm_video*, %struct.drm_video** %7, align 8
  %19 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @drm_plane_setup(i32 %20)
  %22 = load %struct.drm_video*, %struct.drm_video** %7, align 8
  %23 = load %struct.drm_video*, %struct.drm_video** %7, align 8
  %24 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %23, i32 0, i32 1
  %25 = call i32 @drm_surface_free(%struct.drm_video* %22, i32* %24)
  br label %26

26:                                               ; preds = %17, %12, %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.drm_video*, %struct.drm_video** %7, align 8
  %29 = getelementptr inbounds %struct.drm_video, %struct.drm_video* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @drm_plane_setup(i32) #1

declare dso_local i32 @drm_surface_free(%struct.drm_video*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

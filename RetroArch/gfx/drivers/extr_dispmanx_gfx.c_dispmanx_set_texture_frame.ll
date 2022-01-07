; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { i32, i32, i32, i32*, i32, i32 }

@VC_IMAGE_RGBA16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @dispmanx_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.dispmanx_video*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.dispmanx_video*
  store %struct.dispmanx_video* %15, %struct.dispmanx_video** %13, align 8
  %16 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %17 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %60

21:                                               ; preds = %6
  %22 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %23 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %29 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %32 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 2
  %38 = mul i32 %33, %37
  %39 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %40 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %45 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VC_IMAGE_RGBA16, align 4
  %48 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %49 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %52 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %51, i32 0, i32 3
  %53 = call i32 @dispmanx_surface_setup(%struct.dispmanx_video* %41, i32 %42, i32 %43, i32 %46, i32 16, i32 %47, i32 210, i32 %50, i32 1, i32 0, i32** %52)
  br label %54

54:                                               ; preds = %26, %21
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.dispmanx_video*, %struct.dispmanx_video** %13, align 8
  %57 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @dispmanx_surface_update_async(i8* %55, i32* %58)
  br label %60

60:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @dispmanx_surface_setup(%struct.dispmanx_video*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @dispmanx_surface_update_async(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

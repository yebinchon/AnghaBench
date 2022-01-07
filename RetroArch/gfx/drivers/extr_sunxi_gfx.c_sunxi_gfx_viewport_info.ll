; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_gfx_viewport_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_gfx_viewport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_viewport = type { i32, i32, i32, i32, i64, i64 }
%struct.sunxi_video = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_viewport*)* @sunxi_gfx_viewport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_gfx_viewport_info(i8* %0, %struct.video_viewport* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_viewport*, align 8
  %5 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.video_viewport* %1, %struct.video_viewport** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.sunxi_video*
  store %struct.sunxi_video* %7, %struct.sunxi_video** %5, align 8
  %8 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %9 = icmp ne %struct.video_viewport* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sunxi_video*, %struct.sunxi_video** %5, align 8
  %12 = icmp ne %struct.sunxi_video* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %33

14:                                               ; preds = %10
  %15 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %16 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %18 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.sunxi_video*, %struct.sunxi_video** %5, align 8
  %20 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %23 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %25 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.sunxi_video*, %struct.sunxi_video** %5, align 8
  %27 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %30 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.video_viewport*, %struct.video_viewport** %4, align 8
  %32 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %14, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_release.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_fbdev.c_vout_fbdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vout_fbdev = type { i32*, i32, i32, i32 }

@FBIOPUT_VSCREENINFO = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vout_fbdev*)* @vout_fbdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vout_fbdev_release(%struct.vout_fbdev* %0) #0 {
  %2 = alloca %struct.vout_fbdev*, align 8
  store %struct.vout_fbdev* %0, %struct.vout_fbdev** %2, align 8
  %3 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %4 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @FBIOPUT_VSCREENINFO, align 4
  %7 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %8 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %7, i32 0, i32 2
  %9 = call i32 @ioctl(i32 %5, i32 %6, i32* %8)
  %10 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %11 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** @MAP_FAILED, align 8
  %14 = icmp ne i32* %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %17 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %20 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @munmap(i32* %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.vout_fbdev*, %struct.vout_fbdev** %2, align 8
  %25 = getelementptr inbounds %struct.vout_fbdev, %struct.vout_fbdev* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @munmap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

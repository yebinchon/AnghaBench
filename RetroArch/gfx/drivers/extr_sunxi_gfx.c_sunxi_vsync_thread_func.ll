; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_vsync_thread_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_vsync_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@FBIO_WAITFORVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sunxi_vsync_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_vsync_thread_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sunxi_video*
  store %struct.sunxi_video* %5, %struct.sunxi_video** %3, align 8
  br label %6

6:                                                ; preds = %41, %1
  %7 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %8 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %13 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FBIO_WAITFORVSYNC, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, i32 0)
  %19 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %20 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %23 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = icmp eq i32* %21, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %11
  %28 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %29 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %33 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  br label %41

34:                                               ; preds = %11
  %35 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %36 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %40 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %43 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @slock_lock(i32 %44)
  %46 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %47 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %49 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @scond_signal(i32 %50)
  %52 = load %struct.sunxi_video*, %struct.sunxi_video** %3, align 8
  %53 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @slock_unlock(i32 %54)
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_signal(i32) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

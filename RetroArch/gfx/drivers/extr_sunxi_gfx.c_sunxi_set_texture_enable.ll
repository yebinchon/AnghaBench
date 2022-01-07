; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_set_texture_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_set_texture_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i32, i32 }

@sunxi_vsync_thread_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @sunxi_set_texture_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_set_texture_enable(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sunxi_video*
  store %struct.sunxi_video* %9, %struct.sunxi_video** %7, align 8
  %10 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %11 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %19 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %21 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sthread_join(i32 %22)
  br label %24

24:                                               ; preds = %17, %14, %3
  %25 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %26 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %34 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* @sunxi_vsync_thread_func, align 4
  %36 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %37 = call i32 @sthread_create(i32 %35, %struct.sunxi_video* %36)
  %38 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %39 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %29, %24
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sunxi_video*, %struct.sunxi_video** %7, align 8
  %43 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  ret void
}

declare dso_local i32 @sthread_join(i32) #1

declare dso_local i32 @sthread_create(i32, %struct.sunxi_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

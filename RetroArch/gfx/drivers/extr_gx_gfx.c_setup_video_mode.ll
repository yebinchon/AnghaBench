; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_setup_video_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_setup_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@VI_DISPLAY_PIX_SZ = common dso_local global i32 0, align 4
@ORIENTATION_NORMAL = common dso_local global i32 0, align 4
@g_orientation = common dso_local global i32 0, align 4
@g_video_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @setup_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_video_mode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* @VI_DISPLAY_PIX_SZ, align 4
  %18 = mul nsw i32 368640, %17
  %19 = call i32 @memalign(i32 32, i32 %18)
  %20 = call i32 @MEM_K0_TO_K1(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %13

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* @ORIENTATION_NORMAL, align 4
  store i32 %32, i32* @g_orientation, align 4
  %33 = call i32 @OSInitThreadQueue(i32* @g_video_cond)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = call i32 @gx_get_video_output_size(%struct.TYPE_5__* %34, i32* %3, i32* %4)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gx_set_video_mode(%struct.TYPE_5__* %36, i32 %37, i32 %38, i32 1)
  ret void
}

declare dso_local i32 @MEM_K0_TO_K1(i32) #1

declare dso_local i32 @memalign(i32, i32) #1

declare dso_local i32 @OSInitThreadQueue(i32*) #1

declare dso_local i32 @gx_get_video_output_size(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @gx_set_video_mode(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

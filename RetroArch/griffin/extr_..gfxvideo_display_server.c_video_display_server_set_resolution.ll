; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_set_resolution.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, float, i32, i32, i32)* }

@current_display_server = common dso_local global %struct.TYPE_2__* null, align 8
@current_display_server_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_display_server_set_resolution(i32 %0, i32 %1, i32 %2, float %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %7
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32, i32, float, i32, i32, i32)*, i32 (i32, i32, i32, i32, float, i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32, i32, i32, float, i32, i32, i32)* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (i32, i32, i32, i32, float, i32, i32, i32)*, i32 (i32, i32, i32, i32, float, i32, i32, i32)** %25, align 8
  %27 = load i32, i32* @current_display_server_data, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load float, float* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 %26(i32 %27, i32 %28, i32 %29, i32 %30, float %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %18, %7
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

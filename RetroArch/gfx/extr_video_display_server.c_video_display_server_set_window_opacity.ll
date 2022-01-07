; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_display_server.c_video_display_server_set_window_opacity.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_display_server.c_video_display_server_set_window_opacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@current_display_server = common dso_local global %struct.TYPE_2__* null, align 8
@current_display_server_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_display_server_set_window_opacity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %8, align 8
  %10 = icmp ne i32 (i32, i32)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_display_server, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load i32, i32* @current_display_server_data, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 %14(i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %19

18:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

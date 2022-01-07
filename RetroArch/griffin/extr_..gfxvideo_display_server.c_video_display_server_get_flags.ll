; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 }

@current_display_server = common dso_local global %struct.TYPE_5__* null, align 8
@current_display_server_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_display_server_get_flags(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_display_server, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_display_server, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %24

12:                                               ; preds = %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %24

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_display_server, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load i32, i32* @current_display_server_data, align 4
  %21 = call i32 %19(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %16, %15, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

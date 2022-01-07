; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..gfxvideo_display_server.c_video_display_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* (...)* }

@dispserv_null = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@current_display_server = common dso_local global %struct.TYPE_6__* null, align 8
@current_display_server_data = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"[Video]: Found display server: %s\0A\00", align 1
@initial_screen_orientation = common dso_local global i32 0, align 4
@current_screen_orientation = common dso_local global i32 0, align 4
@dispserv_android = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dispserv_win32 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dispserv_x11 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @video_display_server_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @video_driver_display_type_get()
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @video_display_server_destroy()
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %7 [
    i32 129, label %5
    i32 128, label %6
  ]

5:                                                ; preds = %0
  br label %8

6:                                                ; preds = %0
  br label %8

7:                                                ; preds = %0
  store %struct.TYPE_6__* @dispserv_null, %struct.TYPE_6__** @current_display_server, align 8
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_display_server, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i8* (...)*, i8* (...)** %10, align 8
  %12 = call i8* (...) %11()
  store i8* %12, i8** @current_display_server_data, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_display_server, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @video_display_server_get_screen_orientation()
  store i32 %17, i32* @initial_screen_orientation, align 4
  %18 = load i32, i32* @initial_screen_orientation, align 4
  store i32 %18, i32* @current_screen_orientation, align 4
  %19 = load i8*, i8** @current_display_server_data, align 8
  ret i8* %19
}

declare dso_local i32 @video_driver_display_type_get(...) #1

declare dso_local i32 @video_display_server_destroy(...) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @video_display_server_get_screen_orientation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

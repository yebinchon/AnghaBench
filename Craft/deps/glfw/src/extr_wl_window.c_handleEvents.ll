; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c_handleEvents.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_window.c_handleEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.wl_display* }
%struct.wl_display = type { i32 }
%struct.pollfd = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handleEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleEvents(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl_display*, align 8
  %4 = alloca [1 x %struct.pollfd], align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.wl_display*, %struct.wl_display** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 1, i32 0), align 8
  store %struct.wl_display* %6, %struct.wl_display** %3, align 8
  %7 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 0
  %9 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %10 = call i32 @wl_display_get_fd(%struct.wl_display* %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %7, i32 0, i32 1
  %12 = load i32, i32* @POLLIN, align 4
  store i32 %12, i32* %11, align 4
  br label %13

13:                                               ; preds = %17, %1
  %14 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %15 = call i64 @wl_display_prepare_read(%struct.wl_display* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %19 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %18)
  br label %13

20:                                               ; preds = %13
  %21 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %22 = call i64 @wl_display_flush(%struct.wl_display* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EAGAIN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %5, align 8
  br label %30

30:                                               ; preds = %33, %28
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = call i32 @_glfwInputWindowCloseRequest(%struct.TYPE_6__* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %5, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %41 = call i32 @wl_display_cancel_read(%struct.wl_display* %40)
  br label %55

42:                                               ; preds = %24, %20
  %43 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %4, i64 0, i64 0
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @poll(%struct.pollfd* %43, i32 1, i32 %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %49 = call i32 @wl_display_read_events(%struct.wl_display* %48)
  %50 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %51 = call i32 @wl_display_dispatch_pending(%struct.wl_display* %50)
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.wl_display*, %struct.wl_display** %3, align 8
  %54 = call i32 @wl_display_cancel_read(%struct.wl_display* %53)
  br label %55

55:                                               ; preds = %39, %52, %47
  ret void
}

declare dso_local i32 @wl_display_get_fd(%struct.wl_display*) #1

declare dso_local i64 @wl_display_prepare_read(%struct.wl_display*) #1

declare dso_local i32 @wl_display_dispatch_pending(%struct.wl_display*) #1

declare dso_local i64 @wl_display_flush(%struct.wl_display*) #1

declare dso_local i32 @_glfwInputWindowCloseRequest(%struct.TYPE_6__*) #1

declare dso_local i32 @wl_display_cancel_read(%struct.wl_display*) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @wl_display_read_events(%struct.wl_display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

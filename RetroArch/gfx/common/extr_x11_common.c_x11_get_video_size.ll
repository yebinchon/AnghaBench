; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_video_size.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_video_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@g_x11_dpy = common dso_local global i32 0, align 4
@g_x11_win = common dso_local global i64 0, align 8
@None = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x11_get_video_size(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @g_x11_dpy, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* @g_x11_win, align 8
  %14 = load i64, i64* @None, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12, %3
  %17 = call i64 @XOpenDisplay(i32* null)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @DefaultScreen(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @DisplayWidth(i32* %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DisplayHeight(i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @XCloseDisplay(i32* %34)
  br label %36

36:                                               ; preds = %23, %16
  br label %47

37:                                               ; preds = %12
  %38 = load i32, i32* @g_x11_dpy, align 4
  %39 = load i64, i64* @g_x11_win, align 8
  %40 = call i32 @XGetWindowAttributes(i32 %38, i64 %39, %struct.TYPE_3__* %9)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %36
  ret void
}

declare dso_local i64 @XOpenDisplay(i32*) #1

declare dso_local i32 @DefaultScreen(i32*) #1

declare dso_local i32 @DisplayWidth(i32*, i32) #1

declare dso_local i32 @DisplayHeight(i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

declare dso_local i32 @XGetWindowAttributes(i32, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

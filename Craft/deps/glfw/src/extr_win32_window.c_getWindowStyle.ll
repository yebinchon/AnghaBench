; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_window.c_getWindowStyle.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_window.c_getWindowStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_SYSMENU = common dso_local global i32 0, align 4
@WS_MINIMIZEBOX = common dso_local global i32 0, align 4
@WS_MAXIMIZEBOX = common dso_local global i32 0, align 4
@WS_SIZEBOX = common dso_local global i32 0, align 4
@WS_POPUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @getWindowStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getWindowStyle(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %5 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @WS_CAPTION, align 4
  %18 = load i32, i32* @WS_SYSMENU, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @WS_MINIMIZEBOX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @WS_MAXIMIZEBOX, align 4
  %30 = load i32, i32* @WS_SIZEBOX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %16
  br label %39

35:                                               ; preds = %11, %1
  %36 = load i32, i32* @WS_POPUP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

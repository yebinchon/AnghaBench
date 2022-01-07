; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_ActivateWin32Mouse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_ActivateWin32Mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SM_CXSCREEN = common dso_local global i32 0, align 4
@SM_CYSCREEN = common dso_local global i32 0, align 4
@g_wv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@window_center_x = common dso_local global i32 0, align 4
@window_center_y = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_ActivateWin32Mouse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = load i32, i32* @SM_CXSCREEN, align 4
  %5 = call i32 @GetSystemMetrics(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @SM_CYSCREEN, align 4
  %7 = call i32 @GetSystemMetrics(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_wv, i32 0, i32 0), align 4
  %9 = call i32 @GetWindowRect(i32 %8, %struct.TYPE_5__* %3)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %1, align 4
  %28 = sub nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %42, %44
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* @window_center_x, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %48, %50
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* @window_center_y, align 4
  %53 = load i32, i32* @window_center_x, align 4
  %54 = load i32, i32* @window_center_y, align 4
  %55 = call i32 @SetCursorPos(i32 %53, i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_wv, i32 0, i32 0), align 4
  %57 = call i32 @SetCapture(i32 %56)
  %58 = call i32 @ClipCursor(%struct.TYPE_5__* %3)
  br label %59

59:                                               ; preds = %63, %40
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i64 @ShowCursor(i32 %60)
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %59

64:                                               ; preds = %59
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @SetCursorPos(i32, i32) #1

declare dso_local i32 @SetCapture(i32) #1

declare dso_local i32 @ClipCursor(%struct.TYPE_5__*) #1

declare dso_local i64 @ShowCursor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

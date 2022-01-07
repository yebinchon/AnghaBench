; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_selectDisplayConnection.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c_selectDisplayConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selectDisplayConnection(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %7 = call i32 @ConnectionNumber(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = call i32 @FD_ZERO(i32* %3)
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @FD_SET(i32 %9, i32* %3)
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.timeval*, %struct.timeval** %2, align 8
  %15 = call i32 @select(i32 %13, i32* %3, i32* null, i32* null, %struct.timeval* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.timeval*, %struct.timeval** %2, align 8
  %25 = icmp eq %struct.timeval* %24, null
  br label %26

26:                                               ; preds = %23, %19, %16
  %27 = phi i1 [ false, %19 ], [ false, %16 ], [ %25, %23 ]
  br i1 %27, label %11, label %28

28:                                               ; preds = %26
  ret void
}

declare dso_local i32 @ConnectionNumber(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

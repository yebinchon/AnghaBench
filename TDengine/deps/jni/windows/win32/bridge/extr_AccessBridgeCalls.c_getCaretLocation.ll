; ModuleID = '/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_getCaretLocation.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_getCaretLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i32*, i32)* }

@theAccessBridgeInitializedFlag = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@theAccessBridge = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getCaretLocation(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* @theAccessBridgeInitializedFlag, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32 (i64, i32, i32*, i32)*, i32 (i64, i32, i32*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @theAccessBridge, i32 0, i32 0), align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 %14(i64 %15, i32 %16, i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

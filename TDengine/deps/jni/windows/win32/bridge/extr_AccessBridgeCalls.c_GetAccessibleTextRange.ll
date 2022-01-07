; ModuleID = '/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_GetAccessibleTextRange.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_GetAccessibleTextRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i32, i32, i32*, i16)* }

@theAccessBridgeInitializedFlag = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@theAccessBridge = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetAccessibleTextRange(i64 %0, i32 %1, i32 %2, i32 %3, i32* %4, i16 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i16, align 2
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i16 %5, i16* %13, align 2
  %14 = load i64, i64* @theAccessBridgeInitializedFlag, align 8
  %15 = load i64, i64* @TRUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load i32 (i64, i32, i32, i32, i32*, i16)*, i32 (i64, i32, i32, i32, i32*, i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @theAccessBridge, i32 0, i32 0), align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i16, i16* %13, align 2
  %25 = call i32 %18(i64 %19, i32 %20, i32 %21, i32 %22, i32* %23, i16 signext %24)
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %17
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_shutdownAccessBridge.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_shutdownAccessBridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@theAccessBridgeInitializedFlag = common dso_local global i64 0, align 8
@theAccessBridgeInstance = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @shutdownAccessBridge() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* @theAccessBridgeInitializedFlag, align 8
  %5 = load i64, i64* @theAccessBridgeInstance, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %0
  %8 = load i64, i64* @theAccessBridgeInstance, align 8
  %9 = call i64 @FreeLibrary(i64 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 (...) @GetLastError()
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* %1, align 8
  br label %19

17:                                               ; preds = %0
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %1, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

declare dso_local i64 @FreeLibrary(i64) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

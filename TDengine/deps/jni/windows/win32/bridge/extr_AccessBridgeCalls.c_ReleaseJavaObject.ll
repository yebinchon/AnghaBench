; ModuleID = '/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_ReleaseJavaObject.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/jni/windows/win32/bridge/extr_AccessBridgeCalls.c_ReleaseJavaObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)* }

@theAccessBridgeInitializedFlag = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@theAccessBridge = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReleaseJavaObject(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @theAccessBridgeInitializedFlag, align 8
  %6 = load i64, i64* @TRUE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32 (i64, i32)*, i32 (i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @theAccessBridge, i32 0, i32 0), align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 %9(i64 %10, i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

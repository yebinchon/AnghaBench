; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcRead.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LEDC = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledcRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 15
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @LEDC, i32 0, i32 0), align 8
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %7, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

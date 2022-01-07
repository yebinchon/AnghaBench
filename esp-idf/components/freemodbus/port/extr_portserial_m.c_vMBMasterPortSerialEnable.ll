; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial_m.c_vMBMasterPortSerialEnable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial_m.c_vMBMasterPortSerialEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i8* null, align 8
@bTxStateEnabled = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@bRxStateEnabled = common dso_local global i8* null, align 8
@xMbTaskHandle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vMBMasterPortSerialEnable(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i8*, i8** @TRUE, align 8
  store i8* %8, i8** @bTxStateEnabled, align 8
  br label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** @FALSE, align 8
  store i8* %10, i8** @bTxStateEnabled, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8*, i8** @TRUE, align 8
  store i8* %15, i8** @bRxStateEnabled, align 8
  %16 = load i32, i32* @xMbTaskHandle, align 4
  %17 = call i32 @vTaskResume(i32 %16)
  br label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @xMbTaskHandle, align 4
  %20 = call i32 @vTaskSuspend(i32 %19)
  %21 = load i8*, i8** @FALSE, align 8
  store i8* %21, i8** @bRxStateEnabled, align 8
  br label %22

22:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @vTaskResume(i32) #1

declare dso_local i32 @vTaskSuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

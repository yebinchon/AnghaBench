; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_utils.c_gap_convert_btm_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gap/extr_gap_utils.c_gap_convert_btm_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BT_PASS = common dso_local global i32 0, align 4
@GAP_CMD_INITIATED = common dso_local global i32 0, align 4
@GAP_ERR_BUSY = common dso_local global i32 0, align 4
@GAP_ERR_ILL_PARM = common dso_local global i32 0, align 4
@GAP_DEVICE_NOT_UP = common dso_local global i32 0, align 4
@GAP_BAD_BD_ADDR = common dso_local global i32 0, align 4
@GAP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@GAP_ERR_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gap_convert_btm_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 130, label %5
    i32 134, label %7
    i32 135, label %9
    i32 131, label %11
    i32 132, label %11
    i32 128, label %13
    i32 129, label %15
    i32 133, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @BT_PASS, align 4
  store i32 %6, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @GAP_CMD_INITIATED, align 4
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* @GAP_ERR_BUSY, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @GAP_ERR_ILL_PARM, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @GAP_DEVICE_NOT_UP, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @GAP_BAD_BD_ADDR, align 4
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @GAP_ERR_TIMEOUT, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @GAP_ERR_PROCESSING, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

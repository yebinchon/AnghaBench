; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_AllocatePSM.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_AllocatePSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BRCM_RESERVED_PSM_START = common dso_local global i32 0, align 4
@BRCM_RESERVED_PSM_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_AllocatePSM() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @FALSE, align 8
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @l2cb, i32 0, i32 0), align 4
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %38, %31, %0
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 65279
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 4097, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 256
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 256
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* @BRCM_RESERVED_PSM_START, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @BRCM_RESERVED_PSM_END, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %5

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %2, align 4
  %34 = call i32* @l2cu_find_rcb_by_psm(i32 %33)
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %36, %32
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @l2cb, i32 0, i32 0), align 4
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32* @l2cu_find_rcb_by_psm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_qos_throughput_policy_validate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_qos_throughput_policy_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THROUGHPUT_QOS_TIER_UNSPECIFIED = common dso_local global i64 0, align 8
@THROUGHPUT_QOS_TIER_5 = common dso_local global i64 0, align 8
@THROUGHPUT_QOS_TIER_0 = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qos_throughput_policy_validate(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @THROUGHPUT_QOS_TIER_UNSPECIFIED, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @THROUGHPUT_QOS_TIER_5, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @THROUGHPUT_QOS_TIER_0, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %7
  %16 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

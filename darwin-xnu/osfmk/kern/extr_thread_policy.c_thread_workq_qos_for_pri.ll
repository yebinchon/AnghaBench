; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_workq_qos_for_pri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_workq_qos_for_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@thread_qos_policy_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@THREAD_QOS_USER_INTERACTIVE = common dso_local global i64 0, align 8
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@THREAD_QOS_MAINTENANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_workq_qos_for_pri(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %7 = load i64, i64* @THREAD_QOS_USER_INTERACTIVE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i64, i64* @THREAD_QOS_USER_INTERACTIVE, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %32, %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @THREAD_QOS_MAINTENANCE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread_qos_policy_params, i32 0, i32 0), align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32, i32* @THREAD_QOS_MAINTENANCE, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %29, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

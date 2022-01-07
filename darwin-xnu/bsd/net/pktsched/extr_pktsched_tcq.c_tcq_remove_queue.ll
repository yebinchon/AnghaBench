; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_remove_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_remove_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { i32 }
%struct.tcq_class = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcq_remove_queue(%struct.tcq_if* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcq_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcq_class*, align 8
  store %struct.tcq_if* %0, %struct.tcq_if** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %8 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %9)
  %11 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if* %11, i32 %12)
  store %struct.tcq_class* %13, %struct.tcq_class** %6, align 8
  %14 = icmp eq %struct.tcq_class* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %19 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %20 = call i32 @tcq_class_destroy(%struct.tcq_if* %18, %struct.tcq_class* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if*, i32) #1

declare dso_local i32 @tcq_class_destroy(%struct.tcq_if*, %struct.tcq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

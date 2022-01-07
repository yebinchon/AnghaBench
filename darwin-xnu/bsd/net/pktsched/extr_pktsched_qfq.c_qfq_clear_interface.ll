; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_clear_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_clear_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32, %struct.qfq_class**, i32 }
%struct.qfq_class = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_if*)* @qfq_clear_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_clear_interface(%struct.qfq_if* %0) #0 {
  %2 = alloca %struct.qfq_if*, align 8
  %3 = alloca %struct.qfq_class*, align 8
  %4 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %2, align 8
  %5 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %6 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %12 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %17 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %16, i32 0, i32 1
  %18 = load %struct.qfq_class**, %struct.qfq_class*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %18, i64 %20
  %22 = load %struct.qfq_class*, %struct.qfq_class** %21, align 8
  store %struct.qfq_class* %22, %struct.qfq_class** %3, align 8
  %23 = icmp ne %struct.qfq_class* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.qfq_if*, %struct.qfq_if** %2, align 8
  %26 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  %27 = call i32 @qfq_class_destroy(%struct.qfq_if* %25, %struct.qfq_class* %26)
  br label %28

28:                                               ; preds = %24, %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %9

32:                                               ; preds = %9
  ret i32 0
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32 @qfq_class_destroy(%struct.qfq_if*, %struct.qfq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

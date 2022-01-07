; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32, %struct.qfq_class**, i32 }
%struct.qfq_class = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qfq_event(%struct.qfq_if* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %8 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %14 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %19 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %18, i32 0, i32 1
  %20 = load %struct.qfq_class**, %struct.qfq_class*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %20, i64 %22
  %24 = load %struct.qfq_class*, %struct.qfq_class** %23, align 8
  store %struct.qfq_class* %24, %struct.qfq_class** %5, align 8
  %25 = icmp ne %struct.qfq_class* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %28 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @qfq_updateq(%struct.qfq_if* %27, %struct.qfq_class* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32 @qfq_updateq(%struct.qfq_if*, %struct.qfq_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_teardown_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_teardown_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64, %struct.TYPE_2__*, %struct.qfq_if* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.qfq_if = type { i32 }

@PKTSCHEDT_QFQ = common dso_local global i64 0, align 8
@IFCQ_SC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_teardown_ifclassq(%struct.ifclassq* %0) #0 {
  %2 = alloca %struct.ifclassq*, align 8
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %2, align 8
  %5 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %6 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %5, i32 0, i32 2
  %7 = load %struct.qfq_if*, %struct.qfq_if** %6, align 8
  store %struct.qfq_if* %7, %struct.qfq_if** %3, align 8
  %8 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %9 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %8)
  %10 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %11 = icmp ne %struct.qfq_if* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %14 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PKTSCHEDT_QFQ, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ false, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %23 = call i32 @qfq_destroy_locked(%struct.qfq_if* %22)
  %24 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %25 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %24, i32 0, i32 2
  store %struct.qfq_if* null, %struct.qfq_if** %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %45, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IFCQ_SC_MAX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %32 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %39 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load %struct.ifclassq*, %struct.ifclassq** %2, align 8
  %50 = call i32 @ifclassq_detach(%struct.ifclassq* %49)
  ret i32 %50
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @qfq_destroy_locked(%struct.qfq_if*) #1

declare dso_local i32 @ifclassq_detach(%struct.ifclassq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

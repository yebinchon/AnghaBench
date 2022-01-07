; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_getqstats_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_getqstats_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64, %struct.TYPE_2__*, %struct.qfq_if* }
%struct.TYPE_2__ = type { i32 }
%struct.qfq_if = type { i32 }
%struct.if_ifclassq_stats = type { i32 }

@PKTSCHEDT_QFQ = common dso_local global i64 0, align 8
@IFCQ_SC_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_getqstats_ifclassq(%struct.ifclassq* %0, i64 %1, %struct.if_ifclassq_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.if_ifclassq_stats*, align 8
  %8 = alloca %struct.qfq_if*, align 8
  store %struct.ifclassq* %0, %struct.ifclassq** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.if_ifclassq_stats* %2, %struct.if_ifclassq_stats** %7, align 8
  %9 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %10 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %9, i32 0, i32 2
  %11 = load %struct.qfq_if*, %struct.qfq_if** %10, align 8
  store %struct.qfq_if* %11, %struct.qfq_if** %8, align 8
  %12 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %13 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %12)
  %14 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %15 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PKTSCHEDT_QFQ, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @IFCQ_SC_MAX, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %3
  %27 = load %struct.qfq_if*, %struct.qfq_if** %8, align 8
  %28 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %29 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %7, align 8
  %36 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %35, i32 0, i32 0
  %37 = call i32 @qfq_get_class_stats(%struct.qfq_if* %27, i32 %34, i32* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %26, %24
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @qfq_get_class_stats(%struct.qfq_if*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

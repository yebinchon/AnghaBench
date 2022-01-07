; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_stat_sc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_stat_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { %struct.ifclassq* }
%struct.ifclassq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qfq_class* }
%struct.qfq_class = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@MBUF_SC_UNSPEC = common dso_local global i64 0, align 8
@IFCQ_SC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_if*, %struct.TYPE_5__*)* @qfq_stat_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_stat_sc(%struct.qfq_if* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.ifclassq*, align 8
  %6 = alloca %struct.qfq_class*, align 8
  %7 = alloca i64, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %9 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %8, i32 0, i32 0
  %10 = load %struct.ifclassq*, %struct.ifclassq** %9, align 8
  store %struct.ifclassq* %10, %struct.ifclassq** %5, align 8
  %11 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %12 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MBUF_SC_UNSPEC, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @MBUF_VALID_SC(i64 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i1 [ true, %2 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @MBUF_SCIDX(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @IFCQ_SC_MAX, align 8
  %34 = icmp ult i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY(i32 %35)
  %37 = load %struct.ifclassq*, %struct.ifclassq** %5, align 8
  %38 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.qfq_class*, %struct.qfq_class** %42, align 8
  store %struct.qfq_class* %43, %struct.qfq_class** %6, align 8
  %44 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %45 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %44, i32 0, i32 0
  %46 = call i32 @qlen(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qfq_class*, %struct.qfq_class** %6, align 8
  %50 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %49, i32 0, i32 0
  %51 = call i32 @qsize(i32* %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  ret i32 0
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @MBUF_VALID_SC(i64) #1

declare dso_local i64 @MBUF_SCIDX(i64) #1

declare dso_local i32 @qlen(i32*) #1

declare dso_local i32 @qsize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

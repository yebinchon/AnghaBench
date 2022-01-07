; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_request_ifclassq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_request_ifclassq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i64 }
%struct.qfq_if = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifclassq*, i32, i8*)* @qfq_request_ifclassq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_request_ifclassq(%struct.ifclassq* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ifclassq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qfq_if*, align 8
  %8 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %10 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.qfq_if*
  store %struct.qfq_if* %12, %struct.qfq_if** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ifclassq*, %struct.ifclassq** %4, align 8
  %14 = call i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq* %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %39 [
    i32 131, label %16
    i32 130, label %19
    i32 132, label %24
    i32 128, label %29
    i32 129, label %34
  ]

16:                                               ; preds = %3
  %17 = load %struct.qfq_if*, %struct.qfq_if** %7, align 8
  %18 = call i32 @qfq_purge(%struct.qfq_if* %17)
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.qfq_if*, %struct.qfq_if** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = call i32 @qfq_purge_sc(%struct.qfq_if* %20, i32* %22)
  br label %39

24:                                               ; preds = %3
  %25 = load %struct.qfq_if*, %struct.qfq_if** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = call i32 @qfq_event(%struct.qfq_if* %25, i32 %27)
  br label %39

29:                                               ; preds = %3
  %30 = load %struct.qfq_if*, %struct.qfq_if** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = call i32 @qfq_throttle(%struct.qfq_if* %30, i32* %32)
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.qfq_if*, %struct.qfq_if** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @qfq_stat_sc(%struct.qfq_if* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %3, %34, %29, %24, %19, %16
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(%struct.ifclassq*) #1

declare dso_local i32 @qfq_purge(%struct.qfq_if*) #1

declare dso_local i32 @qfq_purge_sc(%struct.qfq_if*, i32*) #1

declare dso_local i32 @qfq_event(%struct.qfq_if*, i32) #1

declare dso_local i32 @qfq_throttle(%struct.qfq_if*, i32*) #1

declare dso_local i32 @qfq_stat_sc(%struct.qfq_if*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

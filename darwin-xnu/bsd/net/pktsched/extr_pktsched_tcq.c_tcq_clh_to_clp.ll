; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_clh_to_clp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_clh_to_clp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_class = type { i64 }
%struct.tcq_if = type { i32, %struct.tcq_class**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcq_class* (%struct.tcq_if*, i64)* @tcq_clh_to_clp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcq_class* @tcq_clh_to_clp(%struct.tcq_if* %0, i64 %1) #0 {
  %3 = alloca %struct.tcq_class*, align 8
  %4 = alloca %struct.tcq_if*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcq_class*, align 8
  %7 = alloca i32, align 4
  store %struct.tcq_if* %0, %struct.tcq_if** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %9 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %10)
  %12 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %13 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %20 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %19, i32 0, i32 1
  %21 = load %struct.tcq_class**, %struct.tcq_class*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tcq_class*, %struct.tcq_class** %21, i64 %23
  %25 = load %struct.tcq_class*, %struct.tcq_class** %24, align 8
  store %struct.tcq_class* %25, %struct.tcq_class** %6, align 8
  %26 = icmp ne %struct.tcq_class* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  %29 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.tcq_class*, %struct.tcq_class** %6, align 8
  store %struct.tcq_class* %34, %struct.tcq_class** %3, align 8
  br label %40

35:                                               ; preds = %27, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  br label %15

39:                                               ; preds = %15
  store %struct.tcq_class* null, %struct.tcq_class** %3, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.tcq_class*, %struct.tcq_class** %3, align 8
  ret %struct.tcq_class* %41
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

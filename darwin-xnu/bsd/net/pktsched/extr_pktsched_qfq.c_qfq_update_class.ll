; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_update_class.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_update_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32 }
%struct.qfq_group = type { i64, i32 }
%struct.qfq_class = type { i64, i64, i64, i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*)* @qfq_update_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_update_class(%struct.qfq_if* %0, %struct.qfq_group* %1, %struct.qfq_class* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qfq_if*, align 8
  %6 = alloca %struct.qfq_group*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.qfq_if* %0, %struct.qfq_if** %5, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %6, align 8
  store %struct.qfq_class* %2, %struct.qfq_class** %7, align 8
  %10 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %11 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %14 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %13, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %16 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %15, i32 0, i32 3
  %17 = call i64 @qempty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %21 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %20)
  br label %60

22:                                               ; preds = %3
  %23 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %24 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %23, i32 0, i32 3
  %25 = call i64 @qhead(i32* %24)
  %26 = inttoptr i64 %25 to %struct.mbuf*
  %27 = call i64 @m_pktlen(%struct.mbuf* %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %29 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul nsw i64 %31, %34
  %36 = add nsw i64 %30, %35
  %37 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %38 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %40 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %43 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @qfq_round_down(i64 %41, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %48 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %61

52:                                               ; preds = %22
  %53 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %54 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %53)
  %55 = load %struct.qfq_if*, %struct.qfq_if** %5, align 8
  %56 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %57 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @qfq_slot_insert(%struct.qfq_if* %55, %struct.qfq_group* %56, %struct.qfq_class* %57, i64 %58)
  br label %60

60:                                               ; preds = %52, %19
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @qempty(i32*) #1

declare dso_local i32 @qfq_front_slot_remove(%struct.qfq_group*) #1

declare dso_local i64 @m_pktlen(%struct.mbuf*) #1

declare dso_local i64 @qhead(i32*) #1

declare dso_local i64 @qfq_round_down(i64, i32) #1

declare dso_local i32 @qfq_slot_insert(%struct.qfq_if*, %struct.qfq_group*, %struct.qfq_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

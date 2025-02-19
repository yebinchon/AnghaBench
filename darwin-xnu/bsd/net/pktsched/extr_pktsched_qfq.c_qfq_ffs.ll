; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_ffs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_ffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i32 }
%struct.qfq_if = type { %struct.qfq_group** }

@QFQ_MAX_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_group* (%struct.qfq_if*, i32)* @qfq_ffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_group* @qfq_ffs(%struct.qfq_if* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_if*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @pktsched_ffs(i32 %6)
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %17 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %16, i32 0, i32 0
  %18 = load %struct.qfq_group**, %struct.qfq_group*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qfq_group*, %struct.qfq_group** %18, i64 %20
  %22 = load %struct.qfq_group*, %struct.qfq_group** %21, align 8
  %23 = icmp ne %struct.qfq_group* %22, null
  br label %24

24:                                               ; preds = %15, %11, %2
  %25 = phi i1 [ false, %11 ], [ false, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  %28 = load %struct.qfq_if*, %struct.qfq_if** %3, align 8
  %29 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %28, i32 0, i32 0
  %30 = load %struct.qfq_group**, %struct.qfq_group*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qfq_group*, %struct.qfq_group** %30, i64 %32
  %34 = load %struct.qfq_group*, %struct.qfq_group** %33, align 8
  ret %struct.qfq_group* %34
}

declare dso_local i32 @pktsched_ffs(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

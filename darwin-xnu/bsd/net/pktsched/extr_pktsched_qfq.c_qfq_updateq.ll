; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_updateq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_updateq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i32 }
%struct.qfq_class = type { i32, i32*, i32, i32 }

@pktsched_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: %s update qid=%d weight=%d event=%s\0A\00", align 1
@QFQ_ONE_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_if*, %struct.qfq_class*, i32)* @qfq_updateq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_updateq(%struct.qfq_if* %0, %struct.qfq_class* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_if*, align 8
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %4, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %8 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %9)
  %11 = load i64, i64* @pktsched_verbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG_DEBUG, align 4
  %15 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %16 = call i32 @QFQIF_IFP(%struct.qfq_if* %15)
  %17 = call i32 @if_name(i32 %16)
  %18 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %19 = call i32 @qfq_style(%struct.qfq_if* %18)
  %20 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %21 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @QFQ_ONE_FP, align 4
  %24 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %25 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ifclassq_ev2str(i32 %28)
  %30 = call i32 @log(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %22, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %13, %3
  %32 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 2
  %34 = call i64 @q_is_sfb(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %38 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %43 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  call void @sfb_updateq(i32* %44, i32 %45)
  br label %46

46:                                               ; preds = %41, %36, %31
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @QFQIF_IFP(%struct.qfq_if*) #1

declare dso_local i32 @qfq_style(%struct.qfq_if*) #1

declare dso_local i32 @ifclassq_ev2str(i32) #1

declare dso_local i64 @q_is_sfb(i32*) #1

declare dso_local void @sfb_updateq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

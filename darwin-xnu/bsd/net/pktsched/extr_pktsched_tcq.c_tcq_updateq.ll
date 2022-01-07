; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_updateq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_updateq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { i32 }
%struct.tcq_class = type { i32*, i32, i32, i32 }

@pktsched_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: %s update qid=%d pri=%d event=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcq_if*, %struct.tcq_class*, i32)* @tcq_updateq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcq_updateq(%struct.tcq_if* %0, %struct.tcq_class* %1, i32 %2) #0 {
  %4 = alloca %struct.tcq_if*, align 8
  %5 = alloca %struct.tcq_class*, align 8
  %6 = alloca i32, align 4
  store %struct.tcq_if* %0, %struct.tcq_if** %4, align 8
  store %struct.tcq_class* %1, %struct.tcq_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %8 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %9)
  %11 = load i64, i64* @pktsched_verbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG_DEBUG, align 4
  %15 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %16 = call i32 @TCQIF_IFP(%struct.tcq_if* %15)
  %17 = call i32 @if_name(i32 %16)
  %18 = load %struct.tcq_if*, %struct.tcq_if** %4, align 8
  %19 = call i32 @tcq_style(%struct.tcq_if* %18)
  %20 = load %struct.tcq_class*, %struct.tcq_class** %5, align 8
  %21 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tcq_class*, %struct.tcq_class** %5, align 8
  %24 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ifclassq_ev2str(i32 %26)
  %28 = call i32 @log(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %22, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %13, %3
  %30 = load %struct.tcq_class*, %struct.tcq_class** %5, align 8
  %31 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %30, i32 0, i32 1
  %32 = call i64 @q_is_sfb(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.tcq_class*, %struct.tcq_class** %5, align 8
  %36 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.tcq_class*, %struct.tcq_class** %5, align 8
  %41 = getelementptr inbounds %struct.tcq_class, %struct.tcq_class* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  call void @sfb_updateq(i32* %42, i32 %43)
  br label %44

44:                                               ; preds = %39, %34, %29
  ret void
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @TCQIF_IFP(%struct.tcq_if*) #1

declare dso_local i32 @tcq_style(%struct.tcq_if*) #1

declare dso_local i32 @ifclassq_ev2str(i32) #1

declare dso_local i64 @q_is_sfb(i32*) #1

declare dso_local void @sfb_updateq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

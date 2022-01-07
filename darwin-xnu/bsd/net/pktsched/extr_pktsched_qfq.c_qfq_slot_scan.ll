; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_scan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_slot_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.qfq_if = type { i32 }
%struct.qfq_group = type { i32, i32, %struct.qfq_class**, i32 }

@pktsched_verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: %s grp=%d full_slots=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.qfq_if*, %struct.qfq_group*)* @qfq_slot_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_slot_scan(%struct.qfq_if* %0, %struct.qfq_group* %1) #0 {
  %3 = alloca %struct.qfq_class*, align 8
  %4 = alloca %struct.qfq_if*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %4, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %5, align 8
  %7 = load i32, i32* @pktsched_verbose, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @LOG_DEBUG, align 4
  %11 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %12 = call i32 @QFQIF_IFP(%struct.qfq_if* %11)
  %13 = call i32 @if_name(i32 %12)
  %14 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %15 = call i32 @qfq_style(%struct.qfq_if* %14)
  %16 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %17 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %20 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @log(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %9, %2
  %24 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %25 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.qfq_class* null, %struct.qfq_class** %3, align 8
  br label %64

29:                                               ; preds = %23
  %30 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %31 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pktsched_ffs(i32 %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %39 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.qfq_if*, %struct.qfq_if** %4, align 8
  %44 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = srem i32 %42, %45
  %47 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %48 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %51 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %37, %29
  %55 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %56 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %55, i32 0, i32 2
  %57 = load %struct.qfq_class**, %struct.qfq_class*** %56, align 8
  %58 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %59 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %57, i64 %61
  %63 = load %struct.qfq_class*, %struct.qfq_class** %62, align 8
  store %struct.qfq_class* %63, %struct.qfq_class** %3, align 8
  br label %64

64:                                               ; preds = %54, %28
  %65 = load %struct.qfq_class*, %struct.qfq_class** %3, align 8
  ret %struct.qfq_class* %65
}

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @QFQIF_IFP(%struct.qfq_if*) #1

declare dso_local i32 @qfq_style(%struct.qfq_if*) #1

declare dso_local i32 @pktsched_ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

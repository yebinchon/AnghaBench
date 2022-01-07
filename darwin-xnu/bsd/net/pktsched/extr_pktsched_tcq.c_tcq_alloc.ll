; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_tcq.c_tcq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcq_if = type { i32, i32* }
%struct.ifnet = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@tcq_zone = common dso_local global i32 0, align 4
@tcq_size = common dso_local global i32 0, align 4
@pktsched_verbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: %s scheduler allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcq_if* @tcq_alloc(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.tcq_if*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcq_if*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @tcq_zone, align 4
  %12 = call %struct.tcq_if* @zalloc(i32 %11)
  br label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @tcq_zone, align 4
  %15 = call %struct.tcq_if* @zalloc_noblock(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.tcq_if* [ %12, %10 ], [ %15, %13 ]
  store %struct.tcq_if* %17, %struct.tcq_if** %6, align 8
  %18 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %19 = icmp eq %struct.tcq_if* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.tcq_if* null, %struct.tcq_if** %3, align 8
  br label %42

21:                                               ; preds = %16
  %22 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %23 = load i32, i32* @tcq_size, align 4
  %24 = call i32 @bzero(%struct.tcq_if* %22, i32 %23)
  %25 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %26 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  %29 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %30 = getelementptr inbounds %struct.tcq_if, %struct.tcq_if* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load i64, i64* @pktsched_verbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32, i32* @LOG_DEBUG, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = call i32 @if_name(%struct.ifnet* %35)
  %37 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  %38 = call i32 @tcq_style(%struct.tcq_if* %37)
  %39 = call i32 @log(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %21
  %41 = load %struct.tcq_if*, %struct.tcq_if** %6, align 8
  store %struct.tcq_if* %41, %struct.tcq_if** %3, align 8
  br label %42

42:                                               ; preds = %40, %20
  %43 = load %struct.tcq_if*, %struct.tcq_if** %3, align 8
  ret %struct.tcq_if* %43
}

declare dso_local %struct.tcq_if* @zalloc(i32) #1

declare dso_local %struct.tcq_if* @zalloc_noblock(i32) #1

declare dso_local i32 @bzero(%struct.tcq_if*, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @tcq_style(%struct.tcq_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

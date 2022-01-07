; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Jam.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Jam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MQ_MSG_BLOCK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LWP_MQ_SEND_URGENT = common dso_local global i32 0, align 4
@LWP_THREADQ_NOTIMEOUT = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_SUCCESSFUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MQ_Jam(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @MQ_MSG_BLOCK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @TRUE, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @FALSE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_5__* @__lwp_mqbox_open(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %4, align 8
  br label %46

26:                                               ; preds = %18
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = bitcast i32* %6 to i8*
  %35 = load i32, i32* @LWP_MQ_SEND_URGENT, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* @LWP_THREADQ_NOTIMEOUT, align 4
  %38 = call i64 @__lwpmq_submit(i32* %29, i32 %33, i8* %34, i32 4, i32 %35, i64 %36, i32 %37)
  %39 = load i64, i64* @LWP_MQ_STATUS_SUCCESSFUL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %26
  %44 = call i32 (...) @__lwp_thread_dispatchenable()
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %43, %24
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.TYPE_5__* @__lwp_mqbox_open(i32) #1

declare dso_local i64 @__lwpmq_submit(i32*, i32, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

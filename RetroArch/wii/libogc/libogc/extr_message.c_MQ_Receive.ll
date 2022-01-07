; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Receive.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MQ_MSG_BLOCK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@LWP_THREADQ_NOTIMEOUT = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_SUCCESSFUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MQ_Receive(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @MQ_MSG_BLOCK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @TRUE, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @FALSE, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_5__* @__lwp_mqbox_open(i32 %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %9, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %4, align 8
  br label %47

27:                                               ; preds = %19
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @LWP_THREADQ_NOTIMEOUT, align 4
  %39 = call i64 @__lwpmq_seize(i32* %30, i32 %34, i8* %36, i64* %10, i64 %37, i32 %38)
  %40 = load i64, i64* @LWP_MQ_STATUS_SUCCESSFUL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %27
  %45 = call i32 (...) @__lwp_thread_dispatchenable()
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %44, %25
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local %struct.TYPE_5__* @__lwp_mqbox_open(i32) #1

declare dso_local i64 @__lwpmq_seize(i32*, i32, i8*, i64*, i64, i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

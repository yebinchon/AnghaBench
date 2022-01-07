; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_message.c_MQ_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@MQ_ERROR_TOOMANY = common dso_local global i32 0, align 4
@LWP_MQ_FIFO = common dso_local global i32 0, align 4
@LWP_OBJTYPE_MBOX = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MQ_Init(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp ne i64* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = call %struct.TYPE_8__* (...) @__lwp_mqbox_allocate()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @MQ_ERROR_TOOMANY, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %11
  %18 = load i32, i32* @LWP_MQ_FIFO, align 4
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @__lwpmq_initialize(i32* %21, %struct.TYPE_9__* %6, i32 %22, i32 4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %17
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i32 @__lwp_mqbox_free(%struct.TYPE_8__* %26)
  %28 = call i32 (...) @__lwp_thread_dispatchenable()
  %29 = load i32, i32* @MQ_ERROR_TOOMANY, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %17
  %31 = load i32, i32* @LWP_OBJTYPE_MBOX, align 4
  %32 = call i32 @LWP_OBJMASKTYPE(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LWP_OBJMASKID(i32 %36)
  %38 = or i32 %32, %37
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %4, align 8
  store i64 %39, i64* %40, align 8
  %41 = call i32 (...) @__lwp_thread_dispatchenable()
  %42 = load i32, i32* @MQ_ERROR_SUCCESSFUL, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %25, %15, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_8__* @__lwp_mqbox_allocate(...) #1

declare dso_local i32 @__lwpmq_initialize(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @__lwp_mqbox_free(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

declare dso_local i32 @LWP_OBJMASKTYPE(i32) #1

declare dso_local i32 @LWP_OBJMASKID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

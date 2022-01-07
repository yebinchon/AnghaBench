; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_initialize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32, i64 }

@LWP_THREADQ_MODEPRIORITY = common dso_local global i32 0, align 4
@LWP_THREADQ_MODEFIFO = common dso_local global i32 0, align 4
@LWP_STATES_WAITING_FOR_MESSAGE = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lwpmq_initialize(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = call i32 @__lwpmq_set_notify(%struct.TYPE_5__* %20, i32* null, i32* null)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, 3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = and i64 %30, -4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = mul i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @__lwp_wkspace_allocate(i32 %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %80

51:                                               ; preds = %33
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @__lwp_queue_initialize(i32* %53, i32* %56, i32 %57, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = call i32 @__lwp_queue_init_empty(i32* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @__lwpmq_is_priority(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %51
  %72 = load i32, i32* @LWP_THREADQ_MODEPRIORITY, align 4
  br label %75

73:                                               ; preds = %51
  %74 = load i32, i32* @LWP_THREADQ_MODEFIFO, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* @LWP_STATES_WAITING_FOR_MESSAGE, align 4
  %78 = load i32, i32* @LWP_MQ_STATUS_TIMEOUT, align 4
  %79 = call i32 @__lwp_threadqueue_init(i32* %67, i32 %76, i32 %77, i32 %78)
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %75, %50
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @__lwpmq_set_notify(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i64 @__lwp_wkspace_allocate(i32) #1

declare dso_local i32 @__lwp_queue_initialize(i32*, i32*, i32, i32) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @__lwp_threadqueue_init(i32*, i32, i32, i32) #1

declare dso_local i64 @__lwpmq_is_priority(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

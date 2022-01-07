; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_submit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i8*, i8*, i32* }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i8* }

@LWP_MQ_STATUS_INVALID_SIZE = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_SUCCESSFUL = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_UNSATISFIED = common dso_local global i32 0, align 4
@LWP_MQ_STATUS_TOO_MANY = common dso_local global i32 0, align 4
@_thr_executing = common dso_local global %struct.TYPE_18__* null, align 8
@LWP_MQ_STATUS_UNSATISFIED_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lwpmq_submit(%struct.TYPE_16__* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* @LWP_MQ_STATUS_INVALID_SIZE, align 4
  store i32 %26, i32* %8, align 4
  br label %140

27:                                               ; preds = %7
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = call %struct.TYPE_18__* @__lwp_threadqueue_dequeue(i32* %34)
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %17, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %37 = icmp ne %struct.TYPE_18__* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @__lwpmq_buffer_copy(i8* %42, i8* %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @LWP_MQ_STATUS_SUCCESSFUL, align 4
  store i32 %56, i32* %8, align 4
  br label %140

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %27
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %58
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = call %struct.TYPE_17__* @__lwpmq_allocate_msg(%struct.TYPE_16__* %67)
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %18, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %70 = icmp ne %struct.TYPE_17__* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @LWP_MQ_STATUS_UNSATISFIED, align 4
  store i32 %72, i32* %8, align 4
  br label %140

73:                                               ; preds = %66
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @__lwpmq_buffer_copy(i8* %77, i8* %78, i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @__lwpmq_msg_insert(%struct.TYPE_16__* %88, %struct.TYPE_17__* %89, i32 %90)
  %92 = load i32, i32* @LWP_MQ_STATUS_SUCCESSFUL, align 4
  store i32 %92, i32* %8, align 4
  br label %140

93:                                               ; preds = %58
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @LWP_MQ_STATUS_TOO_MANY, align 4
  store i32 %97, i32* %8, align 4
  br label %140

98:                                               ; preds = %93
  %99 = call i64 (...) @__lwp_isr_in_progress()
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @LWP_MQ_STATUS_UNSATISFIED, align 4
  store i32 %102, i32* %8, align 4
  br label %140

103:                                              ; preds = %98
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_thr_executing, align 8
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %19, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @_CPU_ISR_Disable(i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  %109 = call i32 @__lwp_threadqueue_csenter(i32* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  store i32* %111, i32** %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @_CPU_ISR_Restore(i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 3
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @__lwp_threadqueue_enqueue(i32* %136, i32 %137)
  %139 = load i32, i32* @LWP_MQ_STATUS_UNSATISFIED_WAIT, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %103, %101, %96, %73, %71, %38, %25
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_18__* @__lwp_threadqueue_dequeue(i32*) #1

declare dso_local i32 @__lwpmq_buffer_copy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @__lwpmq_allocate_msg(%struct.TYPE_16__*) #1

declare dso_local i32 @__lwpmq_msg_insert(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @__lwp_isr_in_progress(...) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_threadqueue_csenter(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__lwp_threadqueue_enqueue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_extractpriority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_extractpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_threadqueue_extractpriority(i32* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = bitcast %struct.TYPE_14__* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @_CPU_ISR_Disable(i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @__lwp_statewaitthreadqueue(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %120

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %9, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = call i32 @__lwp_queue_isempty(%struct.TYPE_15__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %22
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %10, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = bitcast %struct.TYPE_13__* %40 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %6, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %12, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %11, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = call i32 @__lwp_queue_onenode(%struct.TYPE_15__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %34
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = call %struct.TYPE_13__* @__lwp_queue_head(%struct.TYPE_15__* %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %83, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = call %struct.TYPE_13__* @__lwp_queue_tail(%struct.TYPE_15__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %89, align 8
  br label %90

90:                                               ; preds = %67, %34
  br label %98

91:                                               ; preds = %22
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %94, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %97, align 8
  br label %98

98:                                               ; preds = %91, %90
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = call i32 @__lwp_wd_isactive(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @_CPU_ISR_Restore(i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = call i32 @__lwp_thread_unblock(%struct.TYPE_14__* %106)
  br label %119

108:                                              ; preds = %98
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = call i32 @__lwp_wd_deactivate(i32* %110)
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @_CPU_ISR_Restore(i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = call i32 @__lwp_wd_remove_ticks(i32* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = call i32 @__lwp_thread_unblock(%struct.TYPE_14__* %117)
  br label %119

119:                                              ; preds = %108, %103
  br label %123

120:                                              ; preds = %2
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @_CPU_ISR_Restore(i32 %121)
  br label %123

123:                                              ; preds = %120, %119
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @__lwp_statewaitthreadqueue(i32) #1

declare dso_local i32 @__lwp_queue_isempty(%struct.TYPE_15__*) #1

declare dso_local i32 @__lwp_queue_onenode(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @__lwp_queue_head(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @__lwp_queue_tail(%struct.TYPE_15__*) #1

declare dso_local i32 @__lwp_wd_isactive(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__lwp_thread_unblock(%struct.TYPE_14__*) #1

declare dso_local i32 @__lwp_wd_deactivate(i32*) #1

declare dso_local i32 @__lwp_wd_remove_ticks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

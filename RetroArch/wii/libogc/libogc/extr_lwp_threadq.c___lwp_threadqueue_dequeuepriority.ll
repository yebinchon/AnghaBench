; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_dequeuepriority.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_dequeuepriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_25__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@LWP_THREADQ_NUM_PRIOHEADERS = common dso_local global i64 0, align 8
@_thr_executing = common dso_local global %struct.TYPE_26__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @__lwp_threadqueue_dequeuepriority(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @_CPU_ISR_Disable(i64 %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @LWP_THREADQ_NUM_PRIOHEADERS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i64 %24
  %26 = call i32 @__lwp_queue_isempty(%struct.TYPE_19__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = bitcast %struct.TYPE_25__* %36 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %7, align 8
  br label %56

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %15

42:                                               ; preds = %15
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %55 [
    i32 129, label %46
    i32 130, label %46
    i32 131, label %49
    i32 128, label %49
  ]

46:                                               ; preds = %42, %42
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @_CPU_ISR_Restore(i64 %47)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %2, align 8
  br label %159

49:                                               ; preds = %42, %42
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  store i32 130, i32* %51, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @_CPU_ISR_Restore(i64 %52)
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** @_thr_executing, align 8
  store %struct.TYPE_26__* %54, %struct.TYPE_26__** %2, align 8
  br label %159

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %8, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %63 = bitcast %struct.TYPE_25__* %62 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %6, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  store %struct.TYPE_25__* %68, %struct.TYPE_25__** %11, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  store %struct.TYPE_25__* %73, %struct.TYPE_25__** %12, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = call i32 @__lwp_queue_isempty(%struct.TYPE_19__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %129, label %79

79:                                               ; preds = %56
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  store %struct.TYPE_25__* %84, %struct.TYPE_25__** %10, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %86, align 8
  store %struct.TYPE_25__* %87, %struct.TYPE_25__** %9, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %90, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  store %struct.TYPE_25__* %91, %struct.TYPE_25__** %93, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store %struct.TYPE_25__* %94, %struct.TYPE_25__** %96, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  store %struct.TYPE_25__* %97, %struct.TYPE_25__** %99, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = call i32 @__lwp_queue_onenode(%struct.TYPE_19__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %79
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = call %struct.TYPE_25__* @__lwp_queue_head(%struct.TYPE_19__* %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %111, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %116, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store %struct.TYPE_25__* %117, %struct.TYPE_25__** %121, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = call %struct.TYPE_25__* @__lwp_queue_tail(%struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 1
  store %struct.TYPE_25__* %125, %struct.TYPE_25__** %127, align 8
  br label %128

128:                                              ; preds = %105, %79
  br label %136

129:                                              ; preds = %56
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %132, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  store %struct.TYPE_25__* %133, %struct.TYPE_25__** %135, align 8
  br label %136

136:                                              ; preds = %129, %128
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 0
  %139 = call i32 @__lwp_wd_isactive(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %4, align 8
  %143 = call i32 @_CPU_ISR_Restore(i64 %142)
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %145 = call i32 @__lwp_thread_unblock(%struct.TYPE_26__* %144)
  br label %157

146:                                              ; preds = %136
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 0
  %149 = call i32 @__lwp_wd_deactivate(i32* %148)
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @_CPU_ISR_Restore(i64 %150)
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = call i32 @__lwp_wd_remove_ticks(i32* %153)
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %156 = call i32 @__lwp_thread_unblock(%struct.TYPE_26__* %155)
  br label %157

157:                                              ; preds = %146, %141
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %158, %struct.TYPE_26__** %2, align 8
  br label %159

159:                                              ; preds = %157, %49, %46
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  ret %struct.TYPE_26__* %160
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_queue_isempty(%struct.TYPE_19__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @__lwp_queue_onenode(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_25__* @__lwp_queue_head(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_25__* @__lwp_queue_tail(%struct.TYPE_19__*) #1

declare dso_local i32 @__lwp_wd_isactive(i32*) #1

declare dso_local i32 @__lwp_thread_unblock(%struct.TYPE_26__*) #1

declare dso_local i32 @__lwp_wd_deactivate(i32*) #1

declare dso_local i32 @__lwp_wd_remove_ticks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

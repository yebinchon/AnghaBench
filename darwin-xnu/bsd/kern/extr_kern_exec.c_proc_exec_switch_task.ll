; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_proc_exec_switch_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_proc_exec_switch_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i32*, i32*, i64, i64, i64, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@P_LEXIT = common dso_local global i32 0, align 4
@uu_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @proc_exec_switch_task(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = call i32 (...) @current_thread()
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @thread_set_exec_promotion(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call %struct.TYPE_16__* @proc_refdrain_with_refwait(%struct.TYPE_16__* %19, i32 %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @get_threadtask(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @task_is_active(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = call i32 @proc_lock(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @P_LEXIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @thread_is_active(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %128

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %128

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %128

50:                                               ; preds = %47
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = call i32 @proc_transstart(%struct.TYPE_16__* %51, i32 1, i32 0)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %127

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.TYPE_15__* @get_bsdthread_info(i32 %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %14, align 8
  %58 = call i32 (...) @current_thread()
  %59 = call %struct.TYPE_15__* @get_bsdthread_info(i32 %58)
  store %struct.TYPE_15__* %59, %struct.TYPE_15__** %15, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @act_set_astbsd(i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (...) @current_thread()
  %103 = call i32 @thread_copy_resource_info(i32 %101, i32 %102)
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %111 = load i32, i32* @uu_list, align 4
  %112 = call i32 @TAILQ_INSERT_TAIL(i32* %109, %struct.TYPE_15__* %110, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %116 = load i32, i32* @uu_list, align 4
  %117 = call i32 @TAILQ_REMOVE(i32* %114, %struct.TYPE_15__* %115, i32 %116)
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @task_set_did_exec_flag(i64 %118)
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @task_clear_exec_copy_flag(i64 %120)
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @task_copy_fields_for_exec(i64 %122, i64 %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = call i32 @proc_transend(%struct.TYPE_16__* %125, i32 1)
  br label %127

127:                                              ; preds = %55, %50
  br label %128

128:                                              ; preds = %127, %47, %44, %4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = call i32 @proc_unlock(%struct.TYPE_16__* %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = call i32 @proc_refwake(%struct.TYPE_16__* %131)
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @thread_clear_exec_promotion(i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %128
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143, %140, %137, %128
  %147 = load i64, i64* %7, align 8
  %148 = call i32 @task_terminate_internal(i64 %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  ret %struct.TYPE_16__* %150
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @thread_set_exec_promotion(i32) #1

declare dso_local %struct.TYPE_16__* @proc_refdrain_with_refwait(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_threadtask(i32) #1

declare dso_local i32 @task_is_active(i64) #1

declare dso_local i32 @proc_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @thread_is_active(i32) #1

declare dso_local i32 @proc_transstart(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_15__* @get_bsdthread_info(i32) #1

declare dso_local i32 @act_set_astbsd(i32) #1

declare dso_local i32 @thread_copy_resource_info(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @task_set_did_exec_flag(i64) #1

declare dso_local i32 @task_clear_exec_copy_flag(i64) #1

declare dso_local i32 @task_copy_fields_for_exec(i64, i64) #1

declare dso_local i32 @proc_transend(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @proc_refwake(%struct.TYPE_16__*) #1

declare dso_local i32 @thread_clear_exec_promotion(i32) #1

declare dso_local i32 @task_terminate_internal(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

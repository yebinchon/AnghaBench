; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_deallocate_complete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_deallocate_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32*, i32 }

@TH_TERMINATE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"thread_deallocate: thread not properly terminated\0A\00", align 1
@PROCESSOR_NULL = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global i64 0, align 8
@IPC_VOUCHER_NULL = common dso_local global i64 0, align 8
@thread_lck_grp = common dso_local global i32 0, align 4
@thread_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_deallocate_complete(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @assert_thread_magic(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = call i64 @thread_owned_workloops_count(%struct.TYPE_11__* %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TH_TERMINATE2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PROCESSOR_NULL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = call i32 @ipc_thread_terminate(%struct.TYPE_11__* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = call i32 @proc_thread_qos_deallocate(%struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ledger_dereference(i64 %47)
  br label %49

49:                                               ; preds = %44, %25
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ledger_dereference(i64 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TURNSTILE_NULL, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @turnstile_deallocate(i64 %74)
  br label %76

76:                                               ; preds = %71, %59
  %77 = load i64, i64* @IPC_VOUCHER_NULL, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ipc_voucher_release(i64 %85)
  br label %87

87:                                               ; preds = %82, %76
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @kfree(i64 %95, i32 4)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = call i32 @stack_free(%struct.TYPE_11__* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 7
  %108 = call i32 @lck_mtx_destroy(i32* %107, i32* @thread_lck_grp)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = call i32 @machine_thread_destroy(%struct.TYPE_11__* %109)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @task_deallocate(i32 %111)
  %113 = load i32, i32* @thread_zone, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = call i32 @zfree(i32 %113, %struct.TYPE_11__* %114)
  ret void
}

declare dso_local i32 @assert_thread_magic(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_owned_workloops_count(%struct.TYPE_11__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipc_thread_terminate(%struct.TYPE_11__*) #1

declare dso_local i32 @proc_thread_qos_deallocate(%struct.TYPE_11__*) #1

declare dso_local i32 @ledger_dereference(i64) #1

declare dso_local i32 @turnstile_deallocate(i64) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

declare dso_local i32 @kfree(i64, i32) #1

declare dso_local i32 @stack_free(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32*) #1

declare dso_local i32 @machine_thread_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @task_deallocate(i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

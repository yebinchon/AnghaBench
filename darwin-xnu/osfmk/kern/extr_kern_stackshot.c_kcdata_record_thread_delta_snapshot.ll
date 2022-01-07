; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_thread_delta_snapshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_record_thread_delta_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_delta_snapshot_v3 = type { i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@IPC_VOUCHER_NULL = common dso_local global i64 0, align 8
@kThreadDarwinBG = common dso_local global i32 0, align 4
@TASK_POLICY_PASSIVE_IO = common dso_local global i32 0, align 4
@kThreadIOPassive = common dso_local global i32 0, align 4
@kThreadSuspended = common dso_local global i32 0, align 4
@TH_OPT_GLOBAL_FORCED_IDLE = common dso_local global i32 0, align 4
@kGlobalForcedIdle = common dso_local global i32 0, align 4
@kThreadOnCore = common dso_local global i32 0, align 4
@kThreadIdleWorker = common dso_local global i32 0, align 4
@TASK_POLICY_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_delta_snapshot_v3*, %struct.TYPE_10__*, i64)* @kcdata_record_thread_delta_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_record_thread_delta_snapshot(%struct.thread_delta_snapshot_v3* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.thread_delta_snapshot_v3*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  store %struct.thread_delta_snapshot_v3* %0, %struct.thread_delta_snapshot_v3** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %8 = call i32 @thread_tid(%struct.TYPE_10__* %7)
  %9 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %10 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @IPC_VOUCHER_NULL, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @VM_KERNEL_ADDRPERM(i64 %19)
  %21 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %22 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %21, i32 0, i32 12
  store i64 %20, i64* %22, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %25 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %28 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %27, i32 0, i32 11
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @kThreadDarwinBG, align 4
  %36 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %37 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32, i32* @TASK_POLICY_PASSIVE_IO, align 4
  %43 = call i64 @proc_get_effective_thread_policy(%struct.TYPE_10__* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* @kThreadIOPassive, align 4
  %47 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %48 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @kThreadSuspended, align 4
  %58 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %59 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TH_OPT_GLOBAL_FORCED_IDLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @kGlobalForcedIdle, align 4
  %71 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %72 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @kThreadOnCore, align 4
  %80 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %81 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %80, i32 0, i32 11
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = call i64 @stackshot_thread_is_idle_worker_unsafe(%struct.TYPE_10__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @kThreadIdleWorker, align 4
  %90 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %91 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %99 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %104 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %103, i32 0, i32 9
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %109 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %114 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %119 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %125 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %131 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @MAX(i32 %135, i32 %139)
  %141 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %142 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %144 = load i32, i32* @TASK_POLICY_IO, align 4
  %145 = call i64 @proc_get_effective_thread_policy(%struct.TYPE_10__* %143, i32 %144)
  %146 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %147 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = call i32 @static_assert(i32 0)
  %149 = call i32 @static_assert(i32 0)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 4
  %152 = bitcast %struct.TYPE_8__* %151 to i8**
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %155 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = bitcast %struct.TYPE_9__* %157 to i8**
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.thread_delta_snapshot_v3*, %struct.thread_delta_snapshot_v3** %4, align 8
  %161 = getelementptr inbounds %struct.thread_delta_snapshot_v3, %struct.thread_delta_snapshot_v3* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  ret i32 0
}

declare dso_local i32 @thread_tid(%struct.TYPE_10__*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i64 @proc_get_effective_thread_policy(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @stackshot_thread_is_idle_worker_unsafe(%struct.TYPE_10__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @static_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

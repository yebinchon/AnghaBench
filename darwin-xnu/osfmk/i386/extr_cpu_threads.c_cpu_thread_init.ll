; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_cpu_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@cpu_thread_init.initialized = internal global i32 0, align 4
@master_cpu = common dso_local global i32 0, align 4
@x86_topo_lock = common dso_local global i32 0, align 4
@machine_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_thread_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = call i32 (...) @get_cpu_number()
  store i32 %4, i32* %1, align 4
  %5 = call %struct.TYPE_10__* (...) @current_cpu_datap()
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %2, align 8
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @master_cpu, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* @cpu_thread_init.initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = call i32 @simple_lock_init(i32* @x86_topo_lock, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = call %struct.TYPE_9__* @cpu_thread_alloc(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %18, align 8
  store i32 1, i32* @cpu_thread_init.initialized, align 4
  br label %19

19:                                               ; preds = %12, %9, %0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @machine_info, i32 0, i32 0), align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @machine_info, i32 0, i32 0), align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @machine_info, i32 0, i32 1), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @machine_info, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = call i32 @simple_unlock(i32* @x86_topo_lock)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = call i32 @pmCPUMarkRunning(%struct.TYPE_10__* %40)
  %42 = call i32 (...) @timer_resync_deadlines()
  ret void
}

declare dso_local i32 @get_cpu_number(...) #1

declare dso_local %struct.TYPE_10__* @current_cpu_datap(...) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @cpu_thread_alloc(i32) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @pmCPUMarkRunning(%struct.TYPE_10__*) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

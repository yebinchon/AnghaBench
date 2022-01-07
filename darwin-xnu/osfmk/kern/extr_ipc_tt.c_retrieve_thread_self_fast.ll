; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_retrieve_thread_self_fast.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_retrieve_thread_self_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }

@IP_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @retrieve_thread_self_fast(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %5 = call %struct.TYPE_14__* (...) @current_thread()
  %6 = icmp eq %struct.TYPE_14__* %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i32 @thread_mtx_lock(%struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IP_NULL, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %3, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_15__*
  %25 = icmp eq %struct.TYPE_15__* %20, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = call i32 @ip_lock(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = call i32 @ip_active(%struct.TYPE_15__* %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i32 @ip_reference(%struct.TYPE_15__* %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = call i32 @ip_unlock(%struct.TYPE_15__* %38)
  br label %43

40:                                               ; preds = %1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = call %struct.TYPE_15__* @ipc_port_copy_send(%struct.TYPE_15__* %41)
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %3, align 8
  br label %43

43:                                               ; preds = %40, %26
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = call i32 @thread_mtx_unlock(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %46
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_14__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_15__*) #1

declare dso_local i32 @ip_reference(%struct.TYPE_15__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ipc_port_copy_send(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

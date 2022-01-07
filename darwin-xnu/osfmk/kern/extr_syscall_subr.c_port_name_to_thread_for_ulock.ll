; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_port_name_to_thread_for_ulock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_port_name_to_thread_for_ulock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@THREAD_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @port_name_to_thread_for_ulock(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = call %struct.TYPE_9__* (...) @current_thread()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MACH_PORT_NULL, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ipc_port_translate_send(i32 %17, i32 %18, i32* %6)
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ip_reference(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ip_unlock(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_9__* @convert_port_to_thread(i32 %27)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ip_release(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  %33 = icmp eq %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %2, align 8
  br label %56

36:                                               ; preds = %22
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = icmp eq %struct.TYPE_9__* %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40, %36
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @thread_deallocate(%struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %4, align 8
  br label %52

52:                                               ; preds = %48, %40
  br label %53

53:                                               ; preds = %52, %12
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %2, align 8
  br label %56

56:                                               ; preds = %54, %34
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %57
}

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i64 @ipc_port_translate_send(i32, i32, i32*) #1

declare dso_local i32 @ip_reference(i32) #1

declare dso_local i32 @ip_unlock(i32) #1

declare dso_local %struct.TYPE_9__* @convert_port_to_thread(i32) #1

declare dso_local i32 @ip_release(i32) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

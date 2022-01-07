; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_terminate_input_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_terminate_input_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i64, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@cur_dlil_input_threads = common dso_local global i32 0, align 4
@DLIL_INPUT_TERMINATE = common dso_local global i32 0, align 4
@DLIL_INPUT_TERMINATE_COMPLETE = common dso_local global i32 0, align 4
@dlil_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: input thread terminated\0A\00", align 1
@if_input_thread_termination_spin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlil_threading_info*)* @dlil_terminate_input_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_terminate_input_thread(%struct.dlil_threading_info* %0) #0 {
  %2 = alloca %struct.dlil_threading_info*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.dlil_threading_info* %0, %struct.dlil_threading_info** %2, align 8
  %4 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %5 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %4, i32 0, i32 3
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = call i64 (...) @current_thread()
  %8 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %9 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %15 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %16 = icmp ne %struct.dlil_threading_info* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17)
  %19 = call i32 @OSAddAtomic(i32 -1, i32* @cur_dlil_input_threads)
  %20 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %21 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %20, i32 0, i32 2
  %22 = call i32 @lck_mtx_lock_spin(i32* %21)
  %23 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %24 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DLIL_INPUT_TERMINATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY(i32 %29)
  %31 = load i32, i32* @DLIL_INPUT_TERMINATE_COMPLETE, align 4
  %32 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %33 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %37 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %36, i32 0, i32 1
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 @wakeup_one(i32 %38)
  %40 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %2, align 8
  %41 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %40, i32 0, i32 2
  %42 = call i32 @lck_mtx_unlock(i32* %41)
  %43 = call i64 (...) @current_thread()
  %44 = call i32 @thread_deallocate(i64 %43)
  %45 = load i64, i64* @dlil_verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = call i8* @if_name(%struct.ifnet* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %1
  %52 = call i64 (...) @current_thread()
  %53 = call i32 @thread_terminate(i64 %52)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @thread_terminate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

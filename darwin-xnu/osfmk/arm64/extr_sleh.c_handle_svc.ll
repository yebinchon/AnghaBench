; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_svc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_sleh.c_handle_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.proc = type { i32 }
%struct.uthread = type { i32 }

@THROTTLE_LEVEL_NONE = common dso_local global i32 0, align 4
@PLATFORM_SYSCALL_TRAP_NO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Returned from platform_syscall()?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @handle_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_svc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.proc*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @get_saved_state_svc_number(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = call %struct.TYPE_5__* (...) @current_thread()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @syscall_trace(i32* %9)
  %11 = load i32, i32* @THROTTLE_LEVEL_NONE, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* @PLATFORM_SYSCALL_TRAP_NO, align 8
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @platform_syscall(i32* %19)
  %21 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %1
  %23 = call i32 (...) @mach_kauth_cred_uthread_update()
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, -3
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @handle_mach_absolute_time_trap(i32* %30)
  br label %63

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, -4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @handle_mach_continuous_time_trap(i32* %36)
  br label %63

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @mach_syscall(i32* %44)
  br label %63

46:                                               ; preds = %22
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = call %struct.proc* @get_bsdthreadtask_info(%struct.TYPE_5__* %51)
  store %struct.proc* %52, %struct.proc** %5, align 8
  %53 = load %struct.proc*, %struct.proc** %5, align 8
  %54 = call i32 @assert(%struct.proc* %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.uthread*
  %61 = load %struct.proc*, %struct.proc** %5, align 8
  %62 = call i32 @unix_syscall(i32* %55, %struct.TYPE_5__* %56, %struct.uthread* %60, %struct.proc* %61)
  br label %63

63:                                               ; preds = %29, %35, %46, %39
  ret void
}

declare dso_local i32 @get_saved_state_svc_number(i32*) #1

declare dso_local %struct.TYPE_5__* @current_thread(...) #1

declare dso_local i32 @syscall_trace(i32*) #1

declare dso_local i32 @platform_syscall(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mach_kauth_cred_uthread_update(...) #1

declare dso_local i32 @handle_mach_absolute_time_trap(i32*) #1

declare dso_local i32 @handle_mach_continuous_time_trap(i32*) #1

declare dso_local i32 @mach_syscall(i32*) #1

declare dso_local %struct.proc* @get_bsdthreadtask_info(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(%struct.proc*) #1

declare dso_local i32 @unix_syscall(i32*, %struct.TYPE_5__*, %struct.uthread*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

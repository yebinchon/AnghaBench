; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpextovrflt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpextovrflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"FPU segment overrun exception  at interrupt context\0A\00", align 1
@kernel_task = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"FPU segment overrun exception in kernel thread context\0A\00", align 1
@EXC_BAD_ACCESS = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpextovrflt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.x86_fx_thread_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @current_thread()
  store i32 %6, i32* %1, align 4
  %7 = call i32 (...) @current_xstate()
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i32 @ml_set_interrupts_enabled(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i64 (...) @get_interrupt_level()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = call i64 (...) @current_task()
  %16 = load i64, i64* @kernel_task, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %1, align 4
  %22 = call %struct.TYPE_3__* @THREAD_TO_PCB(i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %2, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @simple_lock(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %27, align 8
  store %struct.x86_fx_thread_state* %28, %struct.x86_fx_thread_state** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @simple_unlock(i32* %32)
  %34 = call i32 (...) @clear_ts()
  %35 = call i32 (...) @fninit()
  %36 = call i32 (...) @clear_fpu()
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ml_set_interrupts_enabled(i32 %37)
  %39 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %40 = icmp ne %struct.x86_fx_thread_state* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @fp_state_free(%struct.x86_fx_thread_state* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %20
  %46 = load i32, i32* @EXC_BAD_ACCESS, align 4
  %47 = load i32, i32* @VM_PROT_READ, align 4
  %48 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @i386_exception(i32 %46, i32 %49, i32 0)
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @current_xstate(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i64 @get_interrupt_level(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @current_task(...) #1

declare dso_local %struct.TYPE_3__* @THREAD_TO_PCB(i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @fninit(...) #1

declare dso_local i32 @clear_fpu(...) #1

declare dso_local i32 @fp_state_free(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @i386_exception(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

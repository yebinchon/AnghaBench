; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpexterrflt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpexterrflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"FPU error exception at interrupt context\0A\00", align 1
@kernel_task = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"FPU error exception in kernel thread context\0A\00", align 1
@FPC_IM = common dso_local global i32 0, align 4
@FPC_DM = common dso_local global i32 0, align 4
@FPC_ZM = common dso_local global i32 0, align 4
@FPC_OM = common dso_local global i32 0, align 4
@FPC_UE = common dso_local global i32 0, align 4
@FPC_PE = common dso_local global i32 0, align 4
@FPS_IE = common dso_local global i32 0, align 4
@FPS_DE = common dso_local global i32 0, align 4
@FPS_ZE = common dso_local global i32 0, align 4
@FPS_OE = common dso_local global i32 0, align 4
@FPS_UE = common dso_local global i32 0, align 4
@FPS_PE = common dso_local global i32 0, align 4
@EXC_I386_EXTERR = common dso_local global i32 0, align 4
@EXC_ARITHMETIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpexterrflt() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.x86_fx_thread_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call %struct.TYPE_6__* (...) @current_thread()
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %1, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  store %struct.x86_fx_thread_state* %10, %struct.x86_fx_thread_state** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @ml_set_interrupts_enabled(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = call i64 (...) @get_interrupt_level()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  %18 = call i64 (...) @current_task()
  %19 = load i64, i64* @kernel_task, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = call i32 @fp_save(%struct.TYPE_6__* %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ml_set_interrupts_enabled(i32 %26)
  %28 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %29 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FPC_IM, align 4
  %32 = load i32, i32* @FPC_DM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FPC_ZM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FPC_OM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @FPC_UE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @FPC_PE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %30, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %46 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FPS_IE, align 4
  %49 = load i32, i32* @FPS_DE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FPS_ZE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @FPS_OE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FPS_UE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FPS_PE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %47, %58
  %60 = and i32 %44, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @EXC_I386_EXTERR, align 4
  %62 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %63 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %66 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @fpxlog(i32 %61, i32 %64, i32 %67, i32 %68)
  %70 = load i32, i32* @EXC_ARITHMETIC, align 4
  %71 = load i32, i32* @EXC_I386_EXTERR, align 4
  %72 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %73 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i386_exception(i32 %70, i32 %71, i32 %74)
  ret void
}

declare dso_local %struct.TYPE_6__* @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i64 @get_interrupt_level(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @current_task(...) #1

declare dso_local i32 @fp_save(%struct.TYPE_6__*) #1

declare dso_local i32 @fpxlog(i32, i32, i32, i32) #1

declare dso_local i32 @i386_exception(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

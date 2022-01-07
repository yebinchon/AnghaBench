; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpSSEexterrflt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpSSEexterrflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SSE exception at interrupt context\0A\00", align 1
@kernel_task = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"SSE exception in kernel thread context\0A\00", align 1
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
@EXC_I386_SSEEXTERR = common dso_local global i32 0, align 4
@EXC_ARITHMETIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpSSEexterrflt() #0 {
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
  %16 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  %18 = call i64 (...) @current_task()
  %19 = load i64, i64* @kernel_task, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %25 = call i32 @fp_save(%struct.TYPE_6__* %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ml_set_interrupts_enabled(i32 %26)
  %28 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %29 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 7
  %32 = load i32, i32* @FPC_IM, align 4
  %33 = load i32, i32* @FPC_DM, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FPC_ZM, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @FPC_OM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FPC_UE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FPC_PE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %31, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %47 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FPS_IE, align 4
  %50 = load i32, i32* @FPS_DE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @FPS_ZE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FPS_OE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FPS_UE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FPS_PE, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %48, %59
  %61 = and i32 %45, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @EXC_I386_SSEEXTERR, align 4
  %63 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %64 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %67 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @fpxlog(i32 %62, i32 %65, i32 %68, i32 %69)
  %71 = load i32, i32* @EXC_ARITHMETIC, align 4
  %72 = load i32, i32* @EXC_I386_SSEEXTERR, align 4
  %73 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %2, align 8
  %74 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @i386_exception(i32 %71, i32 %72, i32 %75)
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

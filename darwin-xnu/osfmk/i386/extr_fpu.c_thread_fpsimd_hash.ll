; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_thread_fpsimd_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_thread_fpsimd_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_fx_thread_state = type { i64, i32** }
%struct.TYPE_2__ = type { %struct.x86_fx_thread_state* }

@fpsimd_fault_popc = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@CR0_TS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_fpsimd_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.x86_fx_thread_state*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i64, i64* @fpsimd_fault_popc, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load i64, i64* @FALSE, align 8
  %13 = call i64 @ml_set_interrupts_enabled(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.TYPE_2__* @THREAD_TO_PCB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %16, align 8
  store %struct.x86_fx_thread_state* %17, %struct.x86_fx_thread_state** %6, align 8
  %18 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %6, align 8
  %19 = icmp ne %struct.x86_fx_thread_state* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %11
  %21 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %6, align 8
  %22 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %6, align 8
  %27 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = ptrtoint i32* %31 to i64
  %33 = call i32 @fpsimd_pop(i64 %32, i32 8)
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %20
  %35 = call i64 (...) @get_cr0()
  store i64 %35, i64* %7, align 8
  %36 = call i32 (...) @clear_ts()
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @fp_save(i32 %37)
  %39 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %6, align 8
  %40 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = ptrtoint i32* %44 to i64
  %46 = call i32 @fpsimd_pop(i64 %45, i32 8)
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @FALSE, align 8
  %48 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %6, align 8
  %49 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @CR0_TS, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %34
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @set_cr0(i64 %55)
  br label %57

57:                                               ; preds = %54, %34
  br label %58

58:                                               ; preds = %57, %25
  br label %59

59:                                               ; preds = %58, %11
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @ml_set_interrupts_enabled(i64 %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local %struct.TYPE_2__* @THREAD_TO_PCB(i32) #1

declare dso_local i32 @fpsimd_pop(i64, i32) #1

declare dso_local i64 @get_cr0(...) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @fp_save(i32) #1

declare dso_local i32 @set_cr0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

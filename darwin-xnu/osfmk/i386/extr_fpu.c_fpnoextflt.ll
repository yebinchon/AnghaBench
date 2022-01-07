; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpnoextflt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpnoextflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32, i32 }

@initial_fp_state = common dso_local global i32 0, align 4
@fp_state_size = common dso_local global i32* null, align 8
@fpu_YMM_capable = common dso_local global i64 0, align 8
@XSAVE32 = common dso_local global i32 0, align 4
@FXSAVE32 = common dso_local global i32 0, align 4
@XSAVE64 = common dso_local global i32 0, align 4
@FXSAVE64 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@x86_isr_fp_simd_use = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpnoextflt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.x86_fx_thread_state*, align 8
  %5 = alloca i64, align 8
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %4, align 8
  %6 = call i64 (...) @current_xstate()
  store i64 %6, i64* %5, align 8
  %7 = call i32 (...) @current_thread()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.TYPE_3__* @THREAD_TO_PCB(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %11, align 8
  %13 = icmp eq %struct.x86_fx_thread_state* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %0
  %15 = call i32 (...) @get_interrupt_level()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %56, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.x86_fx_thread_state* @fp_state_alloc(i64 %18)
  store %struct.x86_fx_thread_state* %19, %struct.x86_fx_thread_state** %4, align 8
  %20 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %21 = bitcast %struct.x86_fx_thread_state* %20 to i8*
  %22 = load i32*, i32** @fp_state_size, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bcopy(i8* bitcast (i32* @initial_fp_state to i8*), i8* %21, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @thread_is_64bit_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %17
  %31 = load i64, i64* @fpu_YMM_capable, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @XSAVE32, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @FXSAVE32, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %40 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %52

41:                                               ; preds = %17
  %42 = load i64, i64* @fpu_YMM_capable, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @XSAVE64, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @FXSAVE64, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %51 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %55 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %14, %0
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i32 @ml_set_interrupts_enabled(i32 %57)
  store i32 %58, i32* %1, align 4
  %59 = call i32 (...) @clear_ts()
  %60 = call i32 (...) @get_interrupt_level()
  %61 = call i64 @__improbable(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load i32, i32* @x86_isr_fp_simd_use, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @x86_isr_fp_simd_use, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %67, align 8
  %69 = icmp ne %struct.x86_fx_thread_state* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @fp_save(i32 %71)
  br label %73

73:                                               ; preds = %70, %63
  %74 = call i32 (...) @fpinit()
  br label %90

75:                                               ; preds = %56
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %77, align 8
  %79 = icmp eq %struct.x86_fx_thread_state* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store %struct.x86_fx_thread_state* %81, %struct.x86_fx_thread_state** %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %4, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @fp_load(i32 %88)
  br label %90

90:                                               ; preds = %87, %73
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @ml_set_interrupts_enabled(i32 %91)
  %93 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %94 = icmp ne %struct.x86_fx_thread_state* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @fp_state_free(%struct.x86_fx_thread_state* %96, i64 %97)
  br label %99

99:                                               ; preds = %95, %90
  ret void
}

declare dso_local i64 @current_xstate(...) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.TYPE_3__* @THREAD_TO_PCB(i32) #1

declare dso_local i32 @get_interrupt_level(...) #1

declare dso_local %struct.x86_fx_thread_state* @fp_state_alloc(i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @thread_is_64bit_addr(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @fp_save(i32) #1

declare dso_local i32 @fpinit(...) #1

declare dso_local i32 @fp_load(i32) #1

declare dso_local i32 @fp_state_free(%struct.x86_fx_thread_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_dup_fxstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_dup_fxstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.x86_fx_thread_state* }

@.str = private unnamed_addr constant [39 x i8] c"fpu_dup_fxstate: child's ifps non-null\00", align 1
@FALSE = common dso_local global i32 0, align 4
@fp_state_size = common dso_local global i32* null, align 8
@mxcsr_capability_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_dup_fxstate(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.x86_fx_thread_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.x86_fx_thread_state*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = call i64 @thread_xstate(%struct.TYPE_12__* %10)
  store i64 %11, i64* %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call %struct.TYPE_13__* @THREAD_TO_PCB(%struct.TYPE_12__* %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %15, align 8
  %17 = icmp eq %struct.x86_fx_thread_state* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %22, align 8
  %24 = icmp ne %struct.x86_fx_thread_state* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.x86_fx_thread_state* @fp_state_alloc(i64 %28)
  store %struct.x86_fx_thread_state* %29, %struct.x86_fx_thread_state** %5, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = call i32 @simple_lock(i32* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %34, align 8
  %36 = icmp ne %struct.x86_fx_thread_state* %35, null
  br i1 %36, label %37, label %92

37:                                               ; preds = %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %39, align 8
  store %struct.x86_fx_thread_state* %40, %struct.x86_fx_thread_state** %9, align 8
  %41 = call %struct.TYPE_12__* (...) @current_thread()
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = icmp eq %struct.TYPE_12__* %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @ml_set_interrupts_enabled(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = call %struct.TYPE_12__* (...) @current_thread()
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = icmp eq %struct.TYPE_12__* %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i32 (...) @clear_ts()
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call i32 @fp_save(%struct.TYPE_12__* %53)
  %55 = call i32 (...) @clear_fpu()
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ml_set_interrupts_enabled(i32 %56)
  br label %58

58:                                               ; preds = %44, %37
  %59 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  %60 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %58
  %64 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  store %struct.x86_fx_thread_state* %64, %struct.x86_fx_thread_state** %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %73, align 8
  %75 = bitcast %struct.x86_fx_thread_state* %74 to i8*
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %78, align 8
  %80 = bitcast %struct.x86_fx_thread_state* %79 to i8*
  %81 = load i32*, i32** @fp_state_size, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bcopy(i8* %75, i8* %80, i32 %84)
  %86 = load i32, i32* @mxcsr_capability_mask, align 4
  %87 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %88 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %5, align 8
  br label %91

91:                                               ; preds = %63, %58
  br label %92

92:                                               ; preds = %91, %27
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = call i32 @simple_unlock(i32* %94)
  %96 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %97 = icmp ne %struct.x86_fx_thread_state* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @fp_state_free(%struct.x86_fx_thread_state* %99, i64 %100)
  br label %102

102:                                              ; preds = %18, %98, %92
  ret void
}

declare dso_local i64 @thread_xstate(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @THREAD_TO_PCB(%struct.TYPE_12__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.x86_fx_thread_state* @fp_state_alloc(i64) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local %struct.TYPE_12__* @current_thread(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @fp_save(%struct.TYPE_12__*) #1

declare dso_local i32 @clear_fpu(...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @fp_state_free(%struct.x86_fx_thread_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_savearea_promote_avx512.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_savearea_promote_avx512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_avx_thread_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.x86_avx512_thread_state = type { %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, %struct.x86_avx_thread_state* }
%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"fpu_upgrade_savearea(%p)\0A\00", align 1
@AVX512 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AVX512_XMASK = common dso_local global i32 0, align 4
@fp_state_size = common dso_local global i32* null, align 8
@AVX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fpu_savearea_promote_avx512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpu_savearea_promote_avx512(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.x86_avx_thread_state*, align 8
  %4 = alloca %struct.x86_avx512_thread_state*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store %struct.x86_avx_thread_state* null, %struct.x86_avx_thread_state** %3, align 8
  store %struct.x86_avx512_thread_state* null, %struct.x86_avx512_thread_state** %4, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call %struct.TYPE_6__* @THREAD_TO_PCB(i64 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = call i32 @simple_lock(i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %17, align 8
  store %struct.x86_avx_thread_state* %18, %struct.x86_avx_thread_state** %3, align 8
  %19 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %20 = icmp eq %struct.x86_avx_thread_state* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load i64, i64* @AVX512, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @simple_unlock(i32* %26)
  %28 = load i64, i64* %2, align 8
  %29 = call i64 (...) @current_thread()
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %119

32:                                               ; preds = %21
  %33 = call i32 (...) @fpnoextflt()
  br label %119

34:                                               ; preds = %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AVX512, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @simple_unlock(i32* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @TRUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64, i64* @AVX512, align 8
  %51 = call %struct.x86_avx_thread_state* @fp_state_alloc(i64 %50)
  %52 = bitcast %struct.x86_avx_thread_state* %51 to %struct.x86_avx512_thread_state*
  store %struct.x86_avx512_thread_state* %52, %struct.x86_avx512_thread_state** %4, align 8
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = call i32 @simple_lock(i32* %55)
  %57 = load i64, i64* %2, align 8
  %58 = call i64 (...) @current_thread()
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load i64, i64* @FALSE, align 8
  %62 = call i64 @ml_set_interrupts_enabled(i64 %61)
  store i64 %62, i64* %7, align 8
  %63 = call i32 (...) @clear_ts()
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @fp_save(i64 %64)
  %66 = call i32 (...) @clear_fpu()
  %67 = load i32, i32* @AVX512_XMASK, align 4
  %68 = call i32 @xsetbv(i32 0, i32 %67)
  %69 = load i64, i64* @AVX512, align 8
  %70 = call %struct.TYPE_7__* (...) @current_cpu_datap()
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @ml_set_interrupts_enabled(i64 %72)
  br label %74

74:                                               ; preds = %60, %53
  %75 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %76 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @assert(i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AVX512, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %74
  %86 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %87 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %4, align 8
  %88 = bitcast %struct.x86_avx512_thread_state* %87 to %struct.x86_avx_thread_state*
  %89 = load i32*, i32** @fp_state_size, align 8
  %90 = load i64, i64* @AVX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bcopy(%struct.x86_avx_thread_state* %86, %struct.x86_avx_thread_state* %88, i32 %92)
  %94 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %4, align 8
  %95 = bitcast %struct.x86_avx512_thread_state* %94 to %struct.x86_avx_thread_state*
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store %struct.x86_avx_thread_state* %95, %struct.x86_avx_thread_state** %97, align 8
  %98 = load i64, i64* @AVX512, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  store %struct.x86_avx512_thread_state* null, %struct.x86_avx512_thread_state** %4, align 8
  br label %102

101:                                              ; preds = %74
  store %struct.x86_avx_thread_state* null, %struct.x86_avx_thread_state** %3, align 8
  br label %102

102:                                              ; preds = %101, %85
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = call i32 @simple_unlock(i32* %104)
  %106 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %107 = icmp ne %struct.x86_avx_thread_state* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %110 = load i64, i64* @AVX, align 8
  %111 = call i32 @fp_state_free(%struct.x86_avx_thread_state* %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %4, align 8
  %114 = icmp ne %struct.x86_avx512_thread_state* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %3, align 8
  %117 = load i64, i64* @AVX512, align 8
  %118 = call i32 @fp_state_free(%struct.x86_avx_thread_state* %116, i64 %117)
  br label %119

119:                                              ; preds = %31, %32, %115, %112
  ret void
}

declare dso_local %struct.TYPE_6__* @THREAD_TO_PCB(i64) #1

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @fpnoextflt(...) #1

declare dso_local %struct.x86_avx_thread_state* @fp_state_alloc(i64) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i32 @fp_save(i64) #1

declare dso_local i32 @clear_fpu(...) #1

declare dso_local i32 @xsetbv(i32, i32) #1

declare dso_local %struct.TYPE_7__* @current_cpu_datap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcopy(%struct.x86_avx_thread_state*, %struct.x86_avx_thread_state*, i32) #1

declare dso_local i32 @fp_state_free(%struct.x86_avx_thread_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

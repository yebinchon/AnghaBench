; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_switch_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.x86_fx_thread_state* }
%struct.x86_fx_thread_state = type { i64 }
%struct.TYPE_13__ = type { i64 }

@fpu_default = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@fpu_ZMM_capable = common dso_local global i64 0, align 8
@AVX512 = common dso_local global i64 0, align 8
@default_avx512_state = common dso_local global i32 0, align 4
@xstate_xmask = common dso_local global i64* null, align 8
@fpu_YMM_capable = common dso_local global i64 0, align 8
@default_avx_state = common dso_local global i32 0, align 4
@AVX = common dso_local global i64 0, align 8
@default_fx_state = common dso_local global i32 0, align 4
@XCR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"XCR0 mismatch: 0x%llx 0x%x 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"fpu_switch_context(%p,%p) new xstate: %s\0A\00", align 1
@xstate_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_switch_context(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.x86_fx_thread_state*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = call %struct.TYPE_13__* (...) @current_cpu_datap()
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = call i64 @thread_xstate(%struct.TYPE_12__* %13)
  br label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @fpu_default, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i64 [ %14, %12 ], [ %16, %15 ]
  store i64 %18, i64* %7, align 8
  %19 = call i64 (...) @ml_get_interrupts_enabled()
  %20 = load i64, i64* @FALSE, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %26, align 8
  store %struct.x86_fx_thread_state* %27, %struct.x86_fx_thread_state** %5, align 8
  %28 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %29 = icmp ne %struct.x86_fx_thread_state* %28, null
  br i1 %29, label %30, label %85

30:                                               ; preds = %17
  %31 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %32 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %30
  %37 = call i32 (...) @clear_ts()
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = call i64 @thread_is_64bit_addr(%struct.TYPE_12__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @is_saved_state64(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %36
  %49 = phi i1 [ false, %36 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @fpu_store_registers(%struct.x86_fx_thread_state* %51, i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %5, align 8
  %57 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* @fpu_ZMM_capable, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %48
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AVX512, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i64*, i64** @xstate_xmask, align 8
  %68 = load i64, i64* @AVX512, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @xrstor64(%struct.x86_fx_thread_state* bitcast (i32* @default_avx512_state to %struct.x86_fx_thread_state*), i64 %70)
  br label %84

72:                                               ; preds = %60, %48
  %73 = load i64, i64* @fpu_YMM_capable, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i64*, i64** @xstate_xmask, align 8
  %77 = load i64, i64* @AVX, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @xrstor64(%struct.x86_fx_thread_state* bitcast (i32* @default_avx_state to %struct.x86_fx_thread_state*), i64 %79)
  br label %83

81:                                               ; preds = %72
  %82 = call i32 @fxrstor64(%struct.x86_fx_thread_state* bitcast (i32* @default_fx_state to %struct.x86_fx_thread_state*))
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84, %30, %17
  %86 = load i64, i64* @fpu_YMM_capable, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* @XCR0, align 4
  %90 = call i64 @xgetbv(i32 %89)
  %91 = load i64*, i64** @xstate_xmask, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %90, %96
  %98 = zext i1 %97 to i32
  br label %101

99:                                               ; preds = %85
  %100 = load i32, i32* @TRUE, align 4
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi i32 [ %98, %88 ], [ %100, %99 ]
  %103 = load i32, i32* @XCR0, align 4
  %104 = call i64 @xgetbv(i32 %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** @xstate_xmask, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @assertf(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %107, i64 %113)
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %101
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %123 = load i32*, i32** @xstate_name, align 8
  %124 = load i64, i64* %7, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %121, %struct.TYPE_12__* %122, i32 %126)
  %128 = load i64*, i64** @xstate_xmask, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @xsetbv(i32 0, i64 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %120, %101
  %137 = call i32 (...) @set_ts()
  ret void
}

declare dso_local %struct.TYPE_13__* @current_cpu_datap(...) #1

declare dso_local i64 @thread_xstate(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @clear_ts(...) #1

declare dso_local i64 @thread_is_64bit_addr(%struct.TYPE_12__*) #1

declare dso_local i64 @is_saved_state64(i32) #1

declare dso_local i32 @fpu_store_registers(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @xrstor64(%struct.x86_fx_thread_state*, i64) #1

declare dso_local i32 @fxrstor64(%struct.x86_fx_thread_state*) #1

declare dso_local i32 @assertf(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @xgetbv(i32) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @xsetbv(i32, i64) #1

declare dso_local i32 @set_ts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

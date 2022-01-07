; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_configure_mxcsr_capability_mask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_configure_mxcsr_capability_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__** }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.x86_fx_thread_state = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@mxcsr_capability_mask = common dso_local global i32 0, align 4
@fpu_ZMM_capable = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@fpu_YMM_capable = common dso_local global i64 0, align 8
@XSAVE32 = common dso_local global i32 0, align 4
@FXSAVE32 = common dso_local global i32 0, align 4
@default_avx512_state = common dso_local global i32 0, align 4
@xstate_xmask = common dso_local global i32* null, align 8
@AVX512 = common dso_local global i64 0, align 8
@default_avx_state = common dso_local global i32 0, align 4
@AVX = common dso_local global i64 0, align 8
@default_fx_state = common dso_local global i32 0, align 4
@FP_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @configure_mxcsr_capability_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_mxcsr_capability_mask(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = call i32 @ALIGNED(%struct.TYPE_13__* %3, i32 64)
  %5 = call i32 @assert(i32 %4)
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = call i32 @bzero(%struct.TYPE_13__* %6, i32 56)
  %8 = call i32 (...) @fpinit()
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @fpu_store_registers(%struct.TYPE_13__* %9, i32 %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* @mxcsr_capability_mask, align 4
  %16 = load i32, i32* @mxcsr_capability_mask, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 65471, i32* @mxcsr_capability_mask, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %23, i64 0
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 0
  %27 = call i32 @bzero(%struct.TYPE_13__* %26, i32 8)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = call i32 @bzero(%struct.TYPE_13__* %31, i32 8)
  %33 = load i64, i64* @fpu_ZMM_capable, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %19
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = call i32 @bzero(%struct.TYPE_13__* %39, i32 8)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = call i32 @bzero(%struct.TYPE_13__* %44, i32 8)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = call i32 @bzero(%struct.TYPE_13__* %49, i32 8)
  br label %51

51:                                               ; preds = %35, %19
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i64, i64* @fpu_YMM_capable, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @XSAVE32, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @FXSAVE32, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %68 = call i32 @fpu_load_registers(%struct.TYPE_13__* %67)
  %69 = load i64, i64* @fpu_ZMM_capable, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32*, i32** @xstate_xmask, align 8
  %73 = load i64, i64* @AVX512, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @xsave64(%struct.x86_fx_thread_state* bitcast (i32* @default_avx512_state to %struct.x86_fx_thread_state*), i32 %75)
  br label %77

77:                                               ; preds = %71, %62
  %78 = load i64, i64* @fpu_YMM_capable, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32*, i32** @xstate_xmask, align 8
  %82 = load i64, i64* @AVX, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xsave64(%struct.x86_fx_thread_state* bitcast (i32* @default_avx_state to %struct.x86_fx_thread_state*), i32 %84)
  br label %88

86:                                               ; preds = %77
  %87 = call i32 @fxsave64(%struct.x86_fx_thread_state* bitcast (i32* @default_fx_state to %struct.x86_fx_thread_state*))
  br label %88

88:                                               ; preds = %86, %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i32 -1, i32* %91, align 4
  %92 = load i32, i32* @FP_UNUSED, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = call i32 (...) @set_ts()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ALIGNED(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fpinit(...) #1

declare dso_local i32 @fpu_store_registers(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fpu_load_registers(%struct.TYPE_13__*) #1

declare dso_local i32 @xsave64(%struct.x86_fx_thread_state*, i32) #1

declare dso_local i32 @fxsave64(%struct.x86_fx_thread_state*) #1

declare dso_local i32 @set_ts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_monotonic_arm64.c_mt_cpu_pmi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_monotonic_arm64.c_mt_cpu_pmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }

@FALSE = common dso_local global i64 0, align 8
@mt_pmis = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@MT_CORE_NFIXED = common dso_local global i32 0, align 4
@mt_core_reset_values = common dso_local global i32* null, align 8
@mt_microstackshots = common dso_local global i64 0, align 8
@mt_microstackshot_ctr = common dso_local global i32 0, align 4
@DBG_MONOTONIC = common dso_local global i32 0, align 4
@DBG_MT_DEBUG = common dso_local global i32 0, align 4
@mt_microstackshot_ctx = common dso_local global i32 0, align 4
@CORE_NCTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @mt_cpu_pmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_cpu_pmi(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i64 (...) @ml_get_interrupts_enabled()
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @memory_order_relaxed, align 4
  %20 = call i32 @atomic_fetch_add_explicit(i32* @mt_pmis, i32 1, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %91, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MT_CORE_NFIXED, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @PMSR_OVF(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @mt_cpu_update_count(%struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %36
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** @mt_core_reset_values, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mt_core_set_snap(i32 %46, i32 %51)
  %53 = load i32*, i32** @mt_core_reset_values, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load i64, i64* @mt_microstackshots, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %32
  %68 = load i32, i32* @mt_microstackshot_ctr, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  %72 = call i32 (...) @current_thread()
  %73 = call i32* @get_user_regs(i32 %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @get_saved_state_cpsr(i32* %77)
  %79 = call i32 @PSR64_IS_USER(i32 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i32, i32* @DBG_MONOTONIC, align 4
  %82 = load i32, i32* @DBG_MT_DEBUG, align 4
  %83 = call i32 @KDBG_EVENTID(i32 %81, i32 %82, i32 1)
  %84 = load i32, i32* @mt_microstackshot_ctr, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @KDBG_RELEASE(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @mt_microstackshot_ctx, align 4
  %89 = call i32 @mt_microstackshot_pmi_handler(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %80, %67, %32
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %21

94:                                               ; preds = %21
  %95 = load i32, i32* @MT_CORE_NFIXED, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %109, %94
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @CORE_NCTRS, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @PMSR_OVF(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  call void @kpc_pmi_handler(i32 %107)
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %96

112:                                              ; preds = %96
  %113 = call i32 (...) @core_set_enabled()
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

declare dso_local i32 @PMSR_OVF(i32) #1

declare dso_local i32 @mt_cpu_update_count(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mt_core_set_snap(i32, i32) #1

declare dso_local i32* @get_user_regs(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @PSR64_IS_USER(i32) #1

declare dso_local i32 @get_saved_state_cpsr(i32*) #1

declare dso_local i32 @KDBG_RELEASE(i32, i32, i32) #1

declare dso_local i32 @KDBG_EVENTID(i32, i32, i32) #1

declare dso_local i32 @mt_microstackshot_pmi_handler(i32, i32) #1

declare dso_local void @kpc_pmi_handler(i32) #1

declare dso_local i32 @core_set_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

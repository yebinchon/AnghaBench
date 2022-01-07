; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_monotonic_x86_64.c_mt_pmi_x86_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_monotonic_x86_64.c_mt_pmi_x86_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_cpu = type { i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@GLOBAL_STATUS = common dso_local global i32 0, align 4
@mt_pmis = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@MT_CORE_NFIXED = common dso_local global i32 0, align 4
@CTR_MAX = common dso_local global i32 0, align 4
@mt_microstackshots = common dso_local global i64 0, align 8
@mt_microstackshot_ctr = common dso_local global i32 0, align 4
@DBG_MONOTONIC = common dso_local global i32 0, align 4
@DBG_MT_DEBUG = common dso_local global i32 0, align 4
@mt_microstackshot_ctx = common dso_local global i32 0, align 4
@mt_debug = common dso_local global i64 0, align 8
@mt_core_reset_values = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mt_pmi_x86_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_pmi_x86_64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt_cpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i64 (...) @ml_get_interrupts_enabled()
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call %struct.mt_cpu* (...) @mt_cur_cpu()
  store %struct.mt_cpu* %15, %struct.mt_cpu** %4, align 8
  %16 = load i32, i32* @GLOBAL_STATUS, align 4
  %17 = call i32 @rdmsr64(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @memory_order_relaxed, align 4
  %19 = call i32 @atomic_fetch_add_explicit(i32* @mt_pmis, i32 1, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %116, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MT_CORE_NFIXED, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %119

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @CTR_FIX_POS(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %115

30:                                               ; preds = %24
  %31 = load i32, i32* @CTR_MAX, align 4
  %32 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %33 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %31, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CTR_MAX, align 4
  %42 = icmp sle i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mt_mtc_update_count(%struct.mt_cpu* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %52 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %50
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* @mt_microstackshots, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %30
  %62 = load i32, i32* @mt_microstackshot_ctr, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32*, i32** %2, align 8
  %67 = call %struct.TYPE_5__* @saved_state64(i32* %66)
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %8, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 0
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @DBG_MONOTONIC, align 4
  %77 = load i32, i32* @DBG_MT_DEBUG, align 4
  %78 = call i32 @KDBG_EVENTID(i32 %76, i32 %77, i32 1)
  %79 = load i32, i32* @mt_microstackshot_ctr, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @KDBG_RELEASE(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @mt_microstackshot_ctx, align 4
  %84 = call i32 @mt_microstackshot_pmi_handler(i32 %82, i32 %83)
  br label %96

85:                                               ; preds = %61, %30
  %86 = load i64, i64* @mt_debug, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* @DBG_MONOTONIC, align 4
  %90 = load i32, i32* @DBG_MT_DEBUG, align 4
  %91 = call i32 @KDBG_EVENTID(i32 %89, i32 %90, i32 2)
  %92 = load i32, i32* @mt_microstackshot_ctr, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @KDBG(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %85
  br label %96

96:                                               ; preds = %95, %65
  %97 = load i32*, i32** @mt_core_reset_values, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %103 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** @mt_core_reset_values, align 8
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mt_core_set_snap(i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %96, %24
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %20

119:                                              ; preds = %20
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @UINT64_C(i32 1)
  %122 = shl i32 %121, 4
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32*, i32** %2, align 8
  call void @kpc_pmi_handler(i32* %127)
  br label %128

128:                                              ; preds = %126, %119
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.mt_cpu* @mt_cur_cpu(...) #1

declare dso_local i32 @rdmsr64(i32) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

declare dso_local i32 @CTR_FIX_POS(i32) #1

declare dso_local i32 @mt_mtc_update_count(%struct.mt_cpu*, i32) #1

declare dso_local %struct.TYPE_5__* @saved_state64(i32*) #1

declare dso_local i32 @KDBG_RELEASE(i32, i32, i32) #1

declare dso_local i32 @KDBG_EVENTID(i32, i32, i32) #1

declare dso_local i32 @mt_microstackshot_pmi_handler(i32, i32) #1

declare dso_local i32 @KDBG(i32, i32, i32) #1

declare dso_local i32 @mt_core_set_snap(i32, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local void @kpc_pmi_handler(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

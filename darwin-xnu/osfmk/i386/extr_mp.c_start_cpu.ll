; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_start_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_start_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [47 x i8] c"start_cpu(%p) about to start cpu %d, lapic %d\0A\00", align 1
@TRACE_MP_CPU_START = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"start_cpu(%p) about to wait for cpu %d\0A\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4
@TSC_sync_margin = common dso_local global i64 0, align 8
@tsc_entry_barrier = common dso_local global i64 0, align 8
@tsc_exit_barrier = common dso_local global i64 0, align 8
@tsc_target = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"TSC sync for cpu %d: 0x%016llx delta 0x%llx (%lld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Unsynchronized  TSC for cpu %d: 0x%016llx, delta 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @start_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 1000, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = call i64 (...) @cpu_number()
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %111

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, i8*, i32, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i64 %22)
  %24 = load i32, i32* @TRACE_MP_CPU_START, align 4
  %25 = load i32, i32* @DBG_FUNC_START, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %26, i32 %29, i64 %32, i32 0, i32 0, i32 0)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @i386_start_cpu(i64 %36, i32 %39)
  %41 = load i8*, i8** %2, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i8*, i32, ...) @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 %49, 100
  %51 = call i32 @mp_wait_for_cpu_up(i32 %48, i32 %50, i32 100)
  %52 = load i32, i32* @TRACE_MP_CPU_START, align 4
  %53 = load i32, i32* @DBG_FUNC_END, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_4__* @cpu_datap(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %54, i32 %57, i64 %63, i32 0, i32 0, i32 0)
  %65 = load i64, i64* @TSC_sync_margin, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %111

67:                                               ; preds = %15
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_4__* @cpu_datap(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %67
  %76 = call i32 @atomic_decl(i64* @tsc_entry_barrier, i32 1)
  br label %77

77:                                               ; preds = %80, %75
  %78 = load i64, i64* @tsc_entry_barrier, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %77

81:                                               ; preds = %77
  %82 = call i64 (...) @rdtsc64()
  store i64 %82, i64* %5, align 8
  %83 = call i32 @atomic_decl(i64* @tsc_exit_barrier, i32 1)
  br label %84

84:                                               ; preds = %87, %81
  %85 = load i64, i64* @tsc_exit_barrier, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %84

88:                                               ; preds = %84
  %89 = load i64, i64* @tsc_target, align 8
  %90 = load i64, i64* %5, align 8
  %91 = sub nsw i64 %89, %90
  store i64 %91, i64* %6, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* @tsc_target, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @kprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %95, i64 %96, i64 %97)
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @ABS(i64 %99)
  %101 = load i64, i64* @TSC_sync_margin, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %88
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* @tsc_target, align 8
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %103, %88
  br label %111

111:                                              ; preds = %14, %110, %67, %15
  ret void
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @DBG(i8*, i8*, i32, ...) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @i386_start_cpu(i64, i32) #1

declare dso_local i32 @mp_wait_for_cpu_up(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @cpu_datap(i32) #1

declare dso_local i32 @atomic_decl(i64*, i32) #1

declare dso_local i64 @rdtsc64(...) #1

declare dso_local i32 @kprintf(i8*, i32, i64, i64, i64) #1

declare dso_local i64 @ABS(i64) #1

declare dso_local i32 @printf(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

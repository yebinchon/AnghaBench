; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_intel_startCPU.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_intel_startCPU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@cpu_to_lapic = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"intel_startCPU(%d) lapic_id=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"IdlePTD(%p): 0x%x\0A\00", align 1
@IdlePTD = common dso_local global i64 0, align 8
@mp_cpu_boot_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@start_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@tsc_entry_barrier = common dso_local global i32 0, align 4
@tsc_exit_barrier = common dso_local global i32 0, align 4
@start_cpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to start CPU %02d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to start CPU %02d, rebooting...\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Started cpu %d (lapic id %08x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_startCPU(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @cpu_to_lapic, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @DBGLOG_CPU_INIT(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i64, i64* @IdlePTD, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 ptrtoint (i64* @IdlePTD to i32), i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_5__* @cpu_datap(i32 %23)
  %25 = call i32 @cpu_desc_init(%struct.TYPE_5__* %24)
  %26 = call i32 @lck_mtx_lock(i32* @mp_cpu_boot_lock)
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @ml_set_interrupts_enabled(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (...) @get_cpu_number()
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ml_set_interrupts_enabled(i32 %33)
  %35 = call i32 @lck_mtx_unlock(i32* @mp_cpu_boot_lock)
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %1
  %38 = call i32 (...) @cpu_number()
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start_info, i32 0, i32 2), align 4
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start_info, i32 0, i32 0), align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start_info, i32 0, i32 1), align 4
  store i32 2, i32* @tsc_entry_barrier, align 4
  store i32 2, i32* @tsc_exit_barrier, align 4
  %41 = load i32, i32* @start_cpu, align 4
  %42 = call i32 @mp_rendezvous_no_intrs(i32 %41, i8* bitcast (%struct.TYPE_4__* @start_info to i8*))
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @start_info, i32 0, i32 0), align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ml_set_interrupts_enabled(i32 %43)
  %45 = call i32 @lck_mtx_unlock(i32* @mp_cpu_boot_lock)
  %46 = load i32, i32* %3, align 4
  %47 = call %struct.TYPE_5__* @cpu_datap(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = call i32 @delay(i32 1000000)
  %57 = call i32 (...) @halt_cpu()
  %58 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %37
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i8*, i32, ...) @kprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %51, %32
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DBGLOG_CPU_INIT(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @cpu_desc_init(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @cpu_datap(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @get_cpu_number(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @mp_rendezvous_no_intrs(i32, i8*) #1

declare dso_local i32 @kprintf(i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @halt_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

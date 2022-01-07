; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_populate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@sharedpage_rw_addr = common dso_local global i32 0, align 4
@_COMM_PAGE_BASE_ADDRESS = common dso_local global i64 0, align 8
@commPagePtr = common dso_local global i64 0, align 8
@_COMM_PAGE_THIS_VERSION = common dso_local global i64 0, align 8
@_COMM_PAGE_VERSION = common dso_local global i64 0, align 8
@_COMM_PAGE_RW_OFFSET = common dso_local global i64 0, align 8
@_cpu_capabilities = common dso_local global i32 0, align 4
@kCache32 = common dso_local global i32 0, align 4
@kCache64 = common dso_local global i32 0, align 4
@kCache128 = common dso_local global i32 0, align 4
@_COMM_PAGE_CACHE_LINESIZE = common dso_local global i64 0, align 8
@_COMM_PAGE_SPIN_COUNT = common dso_local global i64 0, align 8
@machine_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@_COMM_PAGE_PHYSICAL_CPUS = common dso_local global i64 0, align 8
@_COMM_PAGE_LOGICAL_CPUS = common dso_local global i64 0, align 8
@_COMM_PAGE_MEMORY_SIZE = common dso_local global i64 0, align 8
@_COMM_PAGE_CPUFAMILY = common dso_local global i64 0, align 8
@_COMM_PAGE_DEV_FIRM = common dso_local global i64 0, align 8
@_COMM_PAGE_USER_TIMEBASE = common dso_local global i64 0, align 8
@_COMM_PAGE_CONT_HWCLOCK = common dso_local global i64 0, align 8
@page_shift = common dso_local global i64 0, align 8
@_COMM_PAGE_KERNEL_PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@_COMM_PAGE_USER_PAGE_SHIFT_32 = common dso_local global i64 0, align 8
@_COMM_PAGE_USER_PAGE_SHIFT_64 = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@_COMM_PAGE_APPROX_TIME = common dso_local global i64 0, align 8
@_COMM_PAGE_APPROX_TIME_SUPPORTED = common dso_local global i64 0, align 8
@SIXTEENK_PAGE_SHIFT = common dso_local global i64 0, align 8
@page_shift_user32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_populate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = call i32 (...) @pmap_create_sharedpage()
  store i32 %5, i32* @sharedpage_rw_addr, align 4
  %6 = load i64, i64* @_COMM_PAGE_BASE_ADDRESS, align 8
  store i64 %6, i64* @commPagePtr, align 8
  %7 = load i64, i64* @_COMM_PAGE_THIS_VERSION, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* @_COMM_PAGE_VERSION, align 8
  %10 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = inttoptr i64 %11 to i32*
  store i32 %8, i32* %12, align 4
  %13 = call i32 (...) @commpage_init_cpu_capabilities()
  %14 = call i32 @commpage_set_timestamp(i32 0, i32 0, i32 0, i32 0, i32 0)
  %15 = load i32, i32* @_cpu_capabilities, align 4
  %16 = load i32, i32* @kCache32, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 32, i32* %1, align 4
  br label %35

20:                                               ; preds = %0
  %21 = load i32, i32* @_cpu_capabilities, align 4
  %22 = load i32, i32* @kCache64, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 64, i32* %1, align 4
  br label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @_cpu_capabilities, align 4
  %28 = load i32, i32* @kCache128, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 128, i32* %1, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %1, align 4
  %37 = load i64, i64* @_COMM_PAGE_CACHE_LINESIZE, align 8
  %38 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = inttoptr i64 %39 to i32*
  store i32 %36, i32* %40, align 4
  %41 = load i64, i64* @_COMM_PAGE_SPIN_COUNT, align 8
  %42 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = inttoptr i64 %43 to i32*
  store i32 1, i32* %44, align 4
  %45 = call i32 (...) @commpage_update_active_cpus()
  %46 = call i32 (...) @cpuid_get_cpufamily()
  store i32 %46, i32* %2, align 4
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 2), align 8
  %48 = trunc i64 %47 to i32
  %49 = load i64, i64* @_COMM_PAGE_PHYSICAL_CPUS, align 8
  %50 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = inttoptr i64 %51 to i32*
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 1), align 8
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* @_COMM_PAGE_LOGICAL_CPUS, align 8
  %56 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %57 = add nsw i64 %55, %56
  %58 = inttoptr i64 %57 to i32*
  store i32 %54, i32* %58, align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 8
  %60 = load i64, i64* @_COMM_PAGE_MEMORY_SIZE, align 8
  %61 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = inttoptr i64 %62 to i64*
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* %2, align 4
  %65 = load i64, i64* @_COMM_PAGE_CPUFAMILY, align 8
  %66 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %67 = add nsw i64 %65, %66
  %68 = inttoptr i64 %67 to i32*
  store i32 %64, i32* %68, align 4
  %69 = call i64 @PE_i_can_has_debugger(i32* null)
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @_COMM_PAGE_DEV_FIRM, align 8
  %72 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %73 = add nsw i64 %71, %72
  %74 = inttoptr i64 %73 to i32*
  store i32 %70, i32* %74, align 4
  %75 = call i32 (...) @user_timebase_allowed()
  %76 = load i64, i64* @_COMM_PAGE_USER_TIMEBASE, align 8
  %77 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = inttoptr i64 %78 to i32*
  store i32 %75, i32* %79, align 4
  %80 = call i32 (...) @user_cont_hwclock_allowed()
  %81 = load i64, i64* @_COMM_PAGE_CONT_HWCLOCK, align 8
  %82 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %83 = add nsw i64 %81, %82
  %84 = inttoptr i64 %83 to i32*
  store i32 %80, i32* %84, align 4
  %85 = load i64, i64* @page_shift, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* @_COMM_PAGE_KERNEL_PAGE_SHIFT, align 8
  %88 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %89 = add nsw i64 %87, %88
  %90 = inttoptr i64 %89 to i32*
  store i32 %86, i32* %90, align 4
  %91 = load i64, i64* @PAGE_SHIFT, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i64, i64* @_COMM_PAGE_USER_PAGE_SHIFT_32, align 8
  %94 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = inttoptr i64 %95 to i32*
  store i32 %92, i32* %96, align 4
  %97 = load i64, i64* @PAGE_SHIFT, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i64, i64* @_COMM_PAGE_USER_PAGE_SHIFT_64, align 8
  %100 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %101 = add nsw i64 %99, %100
  %102 = inttoptr i64 %101 to i32*
  store i32 %98, i32* %102, align 4
  %103 = call i32 (...) @commpage_update_timebase()
  %104 = call i32 @commpage_update_mach_continuous_time(i32 0)
  %105 = call i32 @clock_get_boottime_microtime(i32* %3, i64* %4)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @USEC_PER_SEC, align 4
  %108 = mul nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %4, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @commpage_update_boottime(i64 %111)
  %113 = load i64, i64* @_COMM_PAGE_APPROX_TIME, align 8
  %114 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %115 = add nsw i64 %113, %114
  %116 = inttoptr i64 %115 to i64*
  store i64 0, i64* %116, align 8
  %117 = load i64, i64* @_COMM_PAGE_APPROX_TIME_SUPPORTED, align 8
  %118 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %119 = add nsw i64 %117, %118
  %120 = inttoptr i64 %119 to i32*
  store i32 0, i32* %120, align 4
  %121 = call i32 (...) @commpage_update_kdebug_state()
  ret void
}

declare dso_local i32 @pmap_create_sharedpage(...) #1

declare dso_local i32 @commpage_init_cpu_capabilities(...) #1

declare dso_local i32 @commpage_set_timestamp(i32, i32, i32, i32, i32) #1

declare dso_local i32 @commpage_update_active_cpus(...) #1

declare dso_local i32 @cpuid_get_cpufamily(...) #1

declare dso_local i64 @PE_i_can_has_debugger(i32*) #1

declare dso_local i32 @user_timebase_allowed(...) #1

declare dso_local i32 @user_cont_hwclock_allowed(...) #1

declare dso_local i32 @commpage_update_timebase(...) #1

declare dso_local i32 @commpage_update_mach_continuous_time(i32) #1

declare dso_local i32 @clock_get_boottime_microtime(i32*, i64*) #1

declare dso_local i32 @commpage_update_boottime(i64) #1

declare dso_local i32 @commpage_update_kdebug_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

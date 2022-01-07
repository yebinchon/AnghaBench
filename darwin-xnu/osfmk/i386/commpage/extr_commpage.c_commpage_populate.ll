; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_populate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/commpage/extr_commpage.c_commpage_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commpage32_map = common dso_local global i32 0, align 4
@commPagePtr32 = common dso_local global i64 0, align 8
@_COMM_PAGE32_AREA_USED = common dso_local global i32 0, align 4
@_COMM_PAGE32_BASE_ADDRESS = common dso_local global i32 0, align 4
@time_data32 = common dso_local global i32 0, align 4
@gtod_time_data32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"commpage 32-bit\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@time_data64 = common dso_local global i32 0, align 4
@gtod_time_data64 = common dso_local global i32 0, align 4
@_cpu_capabilities = common dso_local global i32 0, align 4
@k64Bit = common dso_local global i32 0, align 4
@commpage64_map = common dso_local global i32 0, align 4
@commPagePtr64 = common dso_local global i64 0, align 8
@_COMM_PAGE64_AREA_USED = common dso_local global i32 0, align 4
@_COMM_PAGE32_START_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"commpage 64-bit\00", align 1
@commpage_active_cpus_lock = common dso_local global i32 0, align 4
@INTEL_PGBYTES = common dso_local global i32 0, align 4
@_COMM_PAGE64_BASE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_populate() #0 {
  %1 = call i32 (...) @commpage_init_cpu_capabilities()
  %2 = load i32, i32* @commpage32_map, align 4
  %3 = load i32, i32* @_COMM_PAGE32_AREA_USED, align 4
  %4 = load i32, i32* @_COMM_PAGE32_BASE_ADDRESS, align 4
  %5 = load i32, i32* @VM_PROT_READ, align 4
  %6 = call i32 @commpage_populate_one(i32 %2, i64* @commPagePtr32, i32 %3, i32 %4, i32* @time_data32, i32* @gtod_time_data32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @time_data32, align 4
  store i32 %7, i32* @time_data64, align 4
  %8 = load i32, i32* @gtod_time_data32, align 4
  store i32 %8, i32* @gtod_time_data64, align 4
  %9 = load i32, i32* @_cpu_capabilities, align 4
  %10 = load i32, i32* @k64Bit, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i32, i32* @commpage64_map, align 4
  %15 = load i32, i32* @_COMM_PAGE64_AREA_USED, align 4
  %16 = load i32, i32* @_COMM_PAGE32_START_ADDRESS, align 4
  %17 = load i32, i32* @VM_PROT_READ, align 4
  %18 = call i32 @commpage_populate_one(i32 %14, i64* @commPagePtr64, i32 %15, i32 %16, i32* @time_data64, i32* @gtod_time_data64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %0
  %20 = call i32 @simple_lock_init(i32* @commpage_active_cpus_lock, i32 0)
  %21 = call i32 (...) @commpage_update_active_cpus()
  %22 = call i32 (...) @commpage_mach_approximate_time_init()
  %23 = call i32 (...) @commpage_mach_continuous_time_init()
  %24 = call i32 (...) @commpage_boottime_init()
  %25 = call i32 (...) @rtc_nanotime_init_commpage()
  %26 = call i32 (...) @commpage_update_kdebug_state()
  ret void
}

declare dso_local i32 @commpage_init_cpu_capabilities(...) #1

declare dso_local i32 @commpage_populate_one(i32, i64*, i32, i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i32 @commpage_update_active_cpus(...) #1

declare dso_local i32 @commpage_mach_approximate_time_init(...) #1

declare dso_local i32 @commpage_mach_continuous_time_init(...) #1

declare dso_local i32 @commpage_boottime_init(...) #1

declare dso_local i32 @rtc_nanotime_init_commpage(...) #1

declare dso_local i32 @commpage_update_kdebug_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

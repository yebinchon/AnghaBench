; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_system_memory_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_action.c_kperf_system_memory_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PERF_MI_SYS_DATA = common dso_local global i32 0, align 4
@vm_page_free_count = common dso_local global i64 0, align 8
@vm_page_wire_count = common dso_local global i64 0, align 8
@vm_page_external_count = common dso_local global i64 0, align 8
@vm_page_active_count = common dso_local global i64 0, align 8
@vm_page_inactive_count = common dso_local global i64 0, align 8
@vm_page_speculative_count = common dso_local global i64 0, align 8
@PERF_MI_SYS_DATA_2 = common dso_local global i32 0, align 4
@vm_page_anonymous_count = common dso_local global i64 0, align 8
@vm_page_internal_count = common dso_local global i64 0, align 8
@vm_pageout_vminfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@VM_PAGE_COMPRESSOR_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kperf_system_memory_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_system_memory_log() #0 {
  %1 = load i32, i32* @PERF_MI_SYS_DATA, align 4
  %2 = load i64, i64* @vm_page_free_count, align 8
  %3 = load i64, i64* @vm_page_wire_count, align 8
  %4 = load i64, i64* @vm_page_external_count, align 8
  %5 = load i64, i64* @vm_page_active_count, align 8
  %6 = load i64, i64* @vm_page_inactive_count, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @vm_page_speculative_count, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @BUF_DATA(i32 %1, i64 %2, i64 %3, i64 %4, i64 %9)
  %11 = load i32, i32* @PERF_MI_SYS_DATA_2, align 4
  %12 = load i64, i64* @vm_page_anonymous_count, align 8
  %13 = load i64, i64* @vm_page_internal_count, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_pageout_vminfo, i32 0, i32 0), align 8
  %15 = load i64, i64* @VM_PAGE_COMPRESSOR_COUNT, align 8
  %16 = call i32 @BUF_DATA(i32 %11, i64 %12, i64 %13, i64 %14, i64 %15)
  ret void
}

declare dso_local i32 @BUF_DATA(i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

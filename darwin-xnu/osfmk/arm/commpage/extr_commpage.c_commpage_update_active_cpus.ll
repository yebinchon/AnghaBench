; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_update_active_cpus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/commpage/extr_commpage.c_commpage_update_active_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commPagePtr = common dso_local global i32 0, align 4
@processor_avail_count = common dso_local global i32 0, align 4
@_COMM_PAGE_ACTIVE_CPUS = common dso_local global i64 0, align 8
@_COMM_PAGE_RW_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commpage_update_active_cpus() #0 {
  %1 = load i32, i32* @commPagePtr, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @processor_avail_count, align 4
  %6 = load i64, i64* @_COMM_PAGE_ACTIVE_CPUS, align 8
  %7 = load i64, i64* @_COMM_PAGE_RW_OFFSET, align 8
  %8 = add nsw i64 %6, %7
  %9 = inttoptr i64 %8 to i32*
  store i32 %5, i32* %9, align 4
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

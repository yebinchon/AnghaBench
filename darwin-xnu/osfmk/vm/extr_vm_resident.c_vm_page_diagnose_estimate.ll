; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_diagnose_estimate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_diagnose_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@vm_allocation_sites_lock = common dso_local global i32 0, align 4
@VM_MAX_TAG_VALUE = common dso_local global i64 0, align 8
@vm_allocation_sites = common dso_local global i32** null, align 8
@VM_KERN_COUNTER_COUNT = common dso_local global i64 0, align 8
@VM_MAX_TAG_ZONES = common dso_local global i64 0, align 8
@vm_allocation_zone_totals = common dso_local global %struct.TYPE_3__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_page_diagnose_estimate() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @lck_spin_lock(i32* @vm_allocation_sites_lock)
  store i64 0, i64* %3, align 8
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @VM_MAX_TAG_VALUE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32**, i32*** @vm_allocation_sites, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %9
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %17, %16
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %5

23:                                               ; preds = %5
  %24 = call i32 @lck_spin_unlock(i32* @vm_allocation_sites_lock)
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 8
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* @VM_KERN_COUNTER_COUNT, align 8
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

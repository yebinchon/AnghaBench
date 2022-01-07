; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_must_throttle_writes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_must_throttle_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_pageout_queue_external = common dso_local global i32 0, align 4
@vm_page_pageable_external_count = common dso_local global i32 0, align 4
@AVAILABLE_NON_COMPRESSED_MEMORY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @must_throttle_writes() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @VM_PAGE_Q_BACKING_UP(i32* @vm_pageout_queue_external)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* @vm_page_pageable_external_count, align 4
  %6 = load i32, i32* @AVAILABLE_NON_COMPRESSED_MEMORY, align 4
  %7 = mul nsw i32 %6, 6
  %8 = sdiv i32 %7, 10
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %1, align 4
  br label %14

12:                                               ; preds = %4, %0
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i64 @VM_PAGE_Q_BACKING_UP(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

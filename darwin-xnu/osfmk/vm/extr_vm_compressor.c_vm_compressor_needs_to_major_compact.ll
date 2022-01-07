; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_needs_to_major_compact.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_needs_to_major_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_segment_count = common dso_local global i32 0, align 4
@c_swappedout_count = common dso_local global i32 0, align 4
@c_swappedout_sparse_count = common dso_local global i32 0, align 4
@c_segments_nearing_limit = common dso_local global i32 0, align 4
@C_SEG_MAX_PAGES = common dso_local global i32 0, align 4
@VM_PAGE_COMPRESSOR_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vm_compressor_needs_to_major_compact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_compressor_needs_to_major_compact() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @c_segment_count, align 4
  %4 = load i32, i32* @c_swappedout_count, align 4
  %5 = sub nsw i32 %3, %4
  %6 = load i32, i32* @c_swappedout_sparse_count, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @c_segment_count, align 4
  %9 = load i32, i32* @c_segments_nearing_limit, align 4
  %10 = sdiv i32 %9, 8
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @C_SEG_MAX_PAGES, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* @VM_PAGE_COMPRESSOR_COUNT, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %2, align 4
  %19 = sdiv i32 %18, 8
  %20 = load i32, i32* @C_SEG_MAX_PAGES, align 4
  %21 = mul nsw i32 %19, %20
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 1, i32* %1, align 4
  br label %25

24:                                               ; preds = %12, %0
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
